#include "myLib.h"

unsigned short *videoBuffer = (u16 *)0x6000000;

unsigned short *frontBuffer = (u16 *)0x6000000;
unsigned short *backBuffer =  (u16 *)0x600A000;

DMA *dma = (DMA *)0x40000B0;


void setPixel3(int row, int col, unsigned short color)
{
	videoBuffer[OFFSET(row, col, SCREENWIDTH)] = color;
}

void drawRect3(int row, int col, int height, int width, unsigned short color)
{
	volatile unsigned short c = color;
	
	int i;
	for(i = 0; i < height; i++)
	{
		DMANow(3, &c, &videoBuffer[OFFSET(row+i, col, SCREENWIDTH)], (width) | DMA_SOURCE_FIXED);
	}
}

void drawImage3(const unsigned short* image, int row, int col, int height, int width)
{
	int i;
	for(i = 0; i < height; i++)
	{
		DMANow(3, &image[OFFSET(i,0, width)], &videoBuffer[OFFSET(row+i, col, SCREENWIDTH)], (width));
	}
}

void fillScreen3(unsigned short color)
{
	volatile unsigned short c = color;

	DMANow(3, &c, videoBuffer, (240*160) | DMA_SOURCE_FIXED);
	
}

void setPixel4(int row, int col, unsigned char colorIndex)
{
	unsigned short pixels = videoBuffer[OFFSET(row, col, SCREENWIDTH)/2];

	if(col & 1) // odd
	{
		pixels &= 0xFF;
		videoBuffer[OFFSET(row, col, SCREENWIDTH)/2] = pixels | colorIndex << 8;
	}
	else // even
	{
		pixels &= 0xFF << 8;
		videoBuffer[OFFSET(row, col, SCREENWIDTH)/2] = pixels | colorIndex;
	}
}

void drawRect4(int row, int col, int height, int width, unsigned char colorIndex)
{
	volatile unsigned short pixels = colorIndex << 8 | colorIndex;

	int r;
	for(r = 0; r < height; r++)
	{
		if(col & 1) // odd starting col
		{
			setPixel4(row+r, col, colorIndex);

			if(width & 1) // if width is odd
			{
				DMANow(3, &pixels, &videoBuffer[OFFSET(row + r, (col+1)/2, SCREENWIDTH/2)], (width/2) | DMA_SOURCE_FIXED);
			}
			else  // width is even
			{
				DMANow(3, &pixels, &videoBuffer[OFFSET(row + r, (col+1)/2, SCREENWIDTH/2)], ((width/2)-1) | DMA_SOURCE_FIXED);
				setPixel4(row+r, col+width - 1, colorIndex);
			}
		}
		else // even starting col
		{
			DMANow(3, &pixels, &videoBuffer[OFFSET(row + r, col/2, SCREENWIDTH/2)], (width/2) | DMA_SOURCE_FIXED);	
			if(width & 1) // if width is odd
			{
				setPixel4(row+r, col+width - 1, colorIndex);
			}
		}
	}	
}

void fillScreen4(unsigned char colorIndex)
{
	volatile unsigned short pixels = colorIndex << 8 | colorIndex;
	DMANow(3, &pixels, videoBuffer, 19200 | DMA_SOURCE_FIXED);
}

void drawBackgroundImage4(const unsigned short* image)
{
	DMANow(3, image, videoBuffer, 19200);
}

void drawImage4(const unsigned short* image, int row, int col, int height, int width)
{
	int r;
	for(r = 0; r < height; r++)
	{
		DMANow(3, &image[OFFSET(r,0,width)/2], &videoBuffer[OFFSET(row + r, col, SCREENWIDTH)/2], width/2);
	}
}

void loadPalette(const unsigned short* palette)
{
	DMANow(3, palette, PALETTE, 256);
}


void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control)
{
	dma[channel].src = source;
	dma[channel].dst = destination;
	dma[channel].cnt = DMA_ON | control;
}

void waitForVblank()
{
	while(SCANLINECOUNTER > 160);
	while(SCANLINECOUNTER < 160);
}


void flipPage()
{
    if(REG_DISPCTL & BACKBUFFER)
    {
        REG_DISPCTL &= ~BACKBUFFER;
        videoBuffer = backBuffer;
    }
    else
    {
        REG_DISPCTL |= BACKBUFFER;
        videoBuffer = frontBuffer;
    }
}

void loadMap(unsigned short *source, int sbbX, int sbbWidth, int screenBlock)
{
	// Load section we are in
	loadSBB(source, sbbX, sbbWidth, screenBlock);

	//Since we are using a 512x512 bg, the above line will only DMA a 256x256 section of the bg into memory
	//the next section checks if there is more to the image to the right of the current sbbx, right and below, and below
	// If there is a section to the right
	if(sbbX + 1 < sbbWidth)
	{
		loadSBB(source, sbbX + 1, sbbWidth, screenBlock + 1); //need to make sure we place it at a different screenblock than the main one
	}
}

void loadSBB(unsigned short *source, int sbbX, int sbbWidth, int screenBlock)
{
	// Finds the map to the appropriate section
	int sbbMapCoordinate = sbbX * 1024; //one sbb is 1024 shorts
	DMANow(3, &source[sbbMapCoordinate], &SCREENBLOCKBASE[screenBlock], 1024);
}