#include "myLib.h"
#include "player.h"
#include "startBackground.h"
#include "mainBackground.h"
#include "gameBackground.h"
#include "collisionmap.h"
#include "titleSong.h"
#include "GameM1.h"
#include "GameM2.h"
#include "swordSound1.h"
#include "swordSound2.h"
#include "swordSound3.h"
#include "swordMiss.h"
#include "swordBlock.h"
#include "enemySwordHit.h"
#include "heal.h"
#include "playerSprites.h"
#include "enemySprites.h"
#include "gameStructs.h"
#include "effects.h"
#include "instructionsBackground.h"
#include "instructionsBackCanvas.h"
#include "winBackground.h"
#include "loseBackground.h"
#include "pauseBackground.h"
#include "Ending.h"
#include "winText.h"


#define ROWMASK 0xFF
#define COLMASK 0x1FF

unsigned int buttons;
unsigned int oldButtons;
extern int sbbHeight;
extern int sbbWidth=4;
extern int stageComplete;


// We use this to store our position over the world map.
int sbbX = 0;
int sbbY = 0;
// This must be specific to your map.

//****** PROTOTYPES ********//
void initStart();
void updateStart();
void initInstructions();
void updateInstructions();
void initGame();
void updateGame();
void initPause();
void updatePause();
void initWin();
void updateWin();
void initLose();
void updateLose();
void hideSprites();
void animate();
void updateOAM();
void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops, int priority);
void pauseSound();
void unpauseSound();
void muteSound();
void unmuteSound();
void stopSound();
void setupInterrupts();
void interruptHandler();


int state = START;

int hOff=0;
int vOff=0;
int hCamOff;
int vCamOff;

OBJ_ATTR shadowOAM[128];

const unsigned char* spaceSound;
int measure = 0;

unsigned short scanLineCounter;

int main()
{

	setupInterrupts();
	setupSounds();
	initSounds();

	initStart();

	while(1)
	{
		oldButtons = buttons;
		buttons = BUTTONS;

		switch(state)
		{
			case START:
				updateStart();
				break;
			case INSTRUCT:
				updateInstructions();
				break;
			case GAME:
				updateGame();
				break;
			case PAUSE:
				updatePause();
				break;
			case WIN:
				updateWin();
				break;
			case LOSE:
				updateLose();
				break;
		}
	}
	return 0;
}

void initStart()
{
	REG_DISPCTL = MODE0 | BG0_ENABLE;

	REG_BG0CNT = CBB(0) | SBB(27) | BG_SIZE1 | PALBANK(2);

	loadPalette(startBackgroundPal);

	DMANow(3, startBackgroundTiles,&CHARBLOCKBASE[0], startBackgroundTilesLen/2);

	DMANow(3, startBackgroundMap,&SCREENBLOCKBASE[27], startBackgroundMapLen/2);

	hideSprites();
	
	hOff = 0;
	vOff = 0;
	REG_BG0HOFS = hOff;
	REG_BG0VOFS = vOff;
	state = START;
	playSoundA(titleSong,TITLESONGLEN,TITLESONGFREQ, 1);
	
	
	hOff = 0;
	vOff = 0;
	REG_BG0HOFS = hOff;
	REG_BG0VOFS = vOff;
	initPlayer();
	resetEnemies();

	state = START;
}

void updateStart()
{
	if (BUTTON_PRESSED(BUTTON_START))
	{
		initGame();
		unpauseGame();
	}
	if (BUTTON_PRESSED(BUTTON_SELECT))
	{
		initInstructions();
	}
	waitForVblank();
	REG_BG0HOFS = hOff;
	REG_BG1HOFS = hOff/2;
}

void initInstructions()
{
	hideSprites();
	int off=0;
	initPlayer();
	switch (player.actionState)
	{
		case IDLE:
			break;
		case ATTACK:
			off+=2;
			break;
		case BLOCK:
			off+=12;
			break;
		case RUN:
			off+=16;
			break;
		case JUMP:
			off+=22;
			break;
	}
	DMANow(3, &playerSpritesTiles[(player.currFrame + off)*1024], &CHARBLOCKBASE[4], (64*64/4));
	shadowOAM[player.layer].attr0 = (ROWMASK & player.row) | ATTR0_4BPP | ATTR0_SQUARE | ((player.invulTime/5%2)^1 ? 0 : ATTR0_HIDE);
	shadowOAM[player.layer].attr1 = (COLMASK & player.col) | ATTR1_SIZE64 | player.left<<12;
	shadowOAM[player.layer].attr2 = 0 | ATTR2_PRIO(1);
	DMANow(3, shadowOAM, OAM, 512);
	REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE | SPRITE_MODE_1D;
	REG_BG0CNT = CBB(0) | SBB(27) | BG_SIZE0 | PALBANK(2);
	REG_BG1CNT = CBB(1) | SBB(26) | BG_SIZE0 | PALBANK(2);

	int backgroundOff=0;
	switch(player.actionState)
	{
		case IDLE:
			backgroundOff=0;
			break;
		case ATTACK:
			backgroundOff=5-player.left;
			break;
		case BLOCK:
			backgroundOff=8-player.left;
			break;
		case RUN:
			backgroundOff=2-player.left;
			break;
		case JUMP:
			backgroundOff=11-player.left;
			break;
	}
	loadPalette(instructionsBackgroundPal);
	DMANow(3, instructionsBackCanvasTiles,&CHARBLOCKBASE[0], instructionsBackgroundTilesLen/2);
	DMANow(3, instructionsBackCanvasMap,&SCREENBLOCKBASE[27], instructionsBackCanvasMapLen/2);
	DMANow(3, instructionsBackgroundTiles,&CHARBLOCKBASE[1], instructionsBackgroundTilesLen/2);
	DMANow(3, instructionsBackgroundMap+(1024*backgroundOff),&SCREENBLOCKBASE[26], instructionsBackCanvasMapLen/2);
	
	REG_BG0HOFS = 0;
	REG_BG0VOFS = 0;
	REG_BG1HOFS = 0;
	REG_BG1VOFS = 0;
	hOff = 0;
	vOff = 96;
	player.col=183;
	player.row=48;

	state = INSTRUCT;
}

void updateInstructions()
{
	if (playerCheckShouldDemoIdle())
	{
		player.actionState=IDLE;
	}
	if(BUTTON_PRESSED(BUTTON_UP))
	{
		player.demoAirTime=30;
		player.actionState=JUMP;
	}
	//Running
	if(BUTTON_HELD(BUTTON_LEFT))
	{
		if (player.actionState!=ATTACK || player.currFrame<2)
		{
			player.left=1;
		}
		if(!player.actionState || player.actionState==RUN)
		{
			player.actionState=RUN;
		}
		player.cdel=-32;
	}
	if(BUTTON_HELD(BUTTON_RIGHT))
	{
		if (player.actionState!=ATTACK || player.currFrame<2)
		{
			player.left=0;
		}
		if(!player.actionState || player.actionState==RUN)
		{
			player.actionState=RUN;
		}
		player.cdel=32;
	}
	//Blocking
	if(BUTTON_HELD(BUTTON_B))
	{
		if(playerCheckCanBlock())
		{
			player.actionState=BLOCK;
			if (player.prevAniState!=BLOCK) player.currFrame=0;
			player.cdel=0;
		}
	}
	//Attacking
	if(BUTTON_PRESSED(BUTTON_A))
	{
		if(playerCheckCanBlock())player.cdel=0;
		if(player.actionState!=JUMP)
		{
			player.actionState=ATTACK;
			player.cdel=0;
			if (!player.queueSwing) player.queueSwing=1;
		}
	}
	waitForVblank();
	demoAnimatePlayer();
	int off=0;
	switch (player.actionState)
	{
		case IDLE:
			break;
		case ATTACK:
			off+=2;
			break;
		case BLOCK:
			off+=12;
			break;
		case RUN:
			off+=16;
			break;
		case JUMP:
			off+=22;
			break;
	}
	//demo player OAM
	DMANow(3, &playerSpritesTiles[(player.currFrame + off)*1024], &CHARBLOCKBASE[4], (64*64/4));
	shadowOAM[player.layer].attr0 = (ROWMASK & player.row) | ATTR0_4BPP | ATTR0_SQUARE | ((player.invulTime/5%2)^1 ? 0 : ATTR0_HIDE);
	shadowOAM[player.layer].attr1 = (COLMASK & (player.col-46*player.left)) | ATTR1_SIZE64 | player.left<<12;
	shadowOAM[player.layer].attr2 = 0 | ATTR2_PRIO(1) | ATTR2_PALBANK(3);
	int backgroundOff=0;
	switch(player.actionState)
	{
		case IDLE:
			backgroundOff=0;
			break;
		case ATTACK:
			backgroundOff=5-player.left;
			break;
		case BLOCK:
			backgroundOff=8-player.left;
			break;
		case RUN:
			backgroundOff=2-player.left;
			break;
		case JUMP:
			backgroundOff=11-player.left;
			break;
	}
	DMANow(3, instructionsBackgroundTiles,&CHARBLOCKBASE[1], instructionsBackCanvasTilesLen/2);
	DMANow(3, instructionsBackgroundMap+(backgroundOff*1024),&SCREENBLOCKBASE[26], instructionsBackCanvasMapLen/2);
	DMANow(3, shadowOAM, OAM, 512);
	if(BUTTON_PRESSED(BUTTON_START))
	{
		initGame();
		unpauseGame();
	}
	if(BUTTON_PRESSED(BUTTON_SELECT))
	{
		initStart();
	}
}


void initGame()
{
	loadPalette(mainBackgroundPal);
	REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE | SPRITE_MODE_1D;

	REG_BG1CNT = CBB(1) | SBB(24) | BG_SIZE1 | PALBANK(2);
	DMANow(3, mainBackgroundTiles,&CHARBLOCKBASE[1], mainBackgroundTilesLen/2);
	DMANow(3, mainBackgroundMap,&SCREENBLOCKBASE[24], mainBackgroundMapLen/2);
	DMANow(3, mainBackgroundMap,&SCREENBLOCKBASE[25], mainBackgroundMapLen/2);

	REG_BG0CNT = CBB(0) | SBB(26) | BG_SIZE1;
	DMANow(3, gameBackgroundTiles,&CHARBLOCKBASE[0], gameBackgroundTilesLen/2);
	loadMap(gameBackgroundMap,sbbX,1,26);

	REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE | SPRITE_MODE_1D;	
	
	hOff = 0;
	vOff = 96;
	REG_BG0HOFS = hOff%256;
	REG_BG0VOFS = vOff;
	REG_BG1HOFS = hOff/8;
	REG_BG1VOFS = 0;
	
	DMANow(3, effectsTiles, &CHARBLOCKBASE[4], effectsTilesLen/2);
	DMANow(3, enemySpritesTiles, (&SCREENBLOCKBASE[33]), (enemySpritesTilesLen/2));
	
	hideSprites();

    comboCount.row1=1;
    comboCount.col1=2;
    comboCount.row2=10;
    comboCount.col2=2;
    comboCount.row3=19;
    comboCount.col3=8;

    initPlayer();
    resetEnemies();

    stageColLimit=256;
    stageMinColLimit=0;
    phase=0;
    spawnEventNum=0;
    advanceTimer=0;

    playSoundA(gameM1,GAMEM1LEN,GAMEM1FREQ,0);

    state = GAME;
}

void updateGame()
{
	if(soundA.data==gameM1 && !soundA.shouldPlay)
	{
		playSoundA(gameM2,GAMEM2LEN,GAMEM2FREQ,1);
	}
	if (soundA.isPlaying==0)unpauseSound();
	if(BUTTON_PRESSED(BUTTON_START))
	{
		pauseSound();
		initPause();
	}
	if (playerCheckShouldStandStill())
	{
		player.cdel=0;
	}
	if (playerCheckShouldIdle())
	{
		player.actionState=IDLE;
	}
	if(BUTTON_PRESSED(BUTTON_UP))
	{
		if (playerCheckCanJump())
		{
			player.rdel-=84;
			player.actionState=JUMP;

		}
	}
	//Running
	if(BUTTON_HELD(BUTTON_LEFT))
	{
		if (player.actionState!=ATTACK || player.currFrame<2)
		{
			player.left=1;
		}
		if(!player.actionState || player.actionState==RUN)
		{
			player.actionState=RUN;
		}
		player.cdel=-32;
	}
	if(BUTTON_HELD(BUTTON_RIGHT))
	{
		if (player.actionState!=ATTACK || player.currFrame<2)
		{
			player.left=0;
		}
		if(!player.actionState || player.actionState==RUN)
		{
			player.actionState=RUN;
		}
		player.cdel=32;
	}
	//Blocking
	if(BUTTON_HELD(BUTTON_B))
	{
		if(playerCheckCanBlock())
		{
			player.actionState=BLOCK;
			if (player.prevAniState!=BLOCK) player.currFrame=0;
			player.cdel=0;
		}
	}
	//Attacking
	if(BUTTON_PRESSED(BUTTON_A))
	{
		if(playerCheckCanAttack())
		{
			player.actionState=ATTACK;
			player.cdel=0;
			if (!player.queueSwing) player.queueSwing=1;
		}
	}
	gameDirector();
	enemiesDoAI();
	enemiesMove();

	playerAttack();
	playerMove();
	updatePlayerScreenPosition();
	updateEnemiesScreenPosition();

	sbbX=(hOff/256);

	char shouldReload = 0;
	
	loadMap(gameBackgroundMap,sbbX,sbbWidth,26);

	REG_BG0HOFS = hOff;
	REG_BG0VOFS = vOff;
	
	if ((player.bigCol>>4)>(1025-player.width) && enemiesLeft[phase]==1)
	{
		initWin();
	}
	if (player.hp<=0)
	{
		initLose();
	}
	player.energy-=(6+(player.roninTime/60>=3)*6*(player.roninTime/60-3))*player.roninMode*(!player.cheatMode);
	player.invulTime-=1*(player.invulTime>0);
	player.roninTime+=1*player.roninMode;
	if(player.energy<=0 && player.roninMode)
	{
		player.roninMode=0;
		player.energy=0;
		player.range=30;
		player.invulTime=0;
		player.roninTime=0;
	}
	if(player.energy>=player.maxEnergy){
		player.roninMode=1;
		player.range=50;
		player.energy=player.maxEnergy;
	}
	if (player.roninMode)
	{
		if (player.invulTime<=0) player.invulTime+=60;
	}

	animate();
	updateOAM();
	
	DMANow(3, shadowOAM, OAM, 512);
	waitForVblank();
}

void initPause(){
	REG_DISPCTL = MODE0 | BG1_ENABLE;
	loadPalette(pauseBackgroundPal);
	REG_BG1CNT = CBB(1) | SBB(25) | BG_SIZE0;
	DMANow(3, pauseBackgroundTiles,&CHARBLOCKBASE[1], pauseBackgroundTilesLen/2);
	DMANow(3, pauseBackgroundMap,&SCREENBLOCKBASE[25], pauseBackgroundMapLen/2);
	state=PAUSE;
}
void unpauseGame(){
	REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE | SPRITE_MODE_1D;
	loadPalette(mainBackgroundPal);
	REG_BG0CNT = CBB(0) | SBB(26) | BG_SIZE1;
	DMANow(3, gameBackgroundTiles,&CHARBLOCKBASE[0], gameBackgroundTilesLen/2);
	loadMap(gameBackgroundMap,sbbX,4,26);

	REG_BG1CNT = CBB(1) | SBB(24) | BG_SIZE1;
	DMANow(3, mainBackgroundTiles,&CHARBLOCKBASE[1], mainBackgroundTilesLen/2);
	DMANow(3, mainBackgroundMap,&SCREENBLOCKBASE[24], mainBackgroundMapLen/2);
	DMANow(3, mainBackgroundMap,&SCREENBLOCKBASE[25], mainBackgroundMapLen/2);
	state=GAME;
}
void updatePause(){
	if(BUTTON_PRESSED(BUTTON_START))
	{
		unpauseGame();
	}
	if(BUTTON_HELD(BUTTON_L) && BUTTON_PRESSED(BUTTON_R))
	{
		player.cheatMode=!player.cheatMode;
		if (player.cheatMode)player.energy=player.maxEnergy;
	}
	if(BUTTON_PRESSED(BUTTON_SELECT))
	{
		initStart();
	}
}

void initWin()
{
	REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;
	loadPalette(winBackgroundPal);
	REG_BG0HOFS = 0;
	REG_BG0VOFS = 0;
	REG_BG1HOFS = 0;
	REG_BG1VOFS = 0;
	REG_BG0CNT = CBB(0) | SBB(27) | BG_SIZE0 | 3;
	REG_BG1CNT = CBB(1) | SBB(26) | BG_SIZE0 | PALBANK(5) | 1;
	DMANow(3, winBackgroundTiles,&CHARBLOCKBASE[0], winBackgroundTilesLen/2);
	DMANow(3, winBackgroundMap,&SCREENBLOCKBASE[27], winBackgroundMapLen/2);
	DMANow(3, winTextTiles,&CHARBLOCKBASE[1], winTextTilesLen/2);
	DMANow(3, winTextMap,&SCREENBLOCKBASE[26], winTextMapLen/2);
	stopSound();
	playSoundA(Ending,ENDINGLEN,ENDINGFREQ,1);
	state = WIN;
}
void updateWin(){
	if(soundA.data==gameM1 && !soundA.shouldPlay)
	{
		playSoundA(gameM2,GAMEM2LEN,GAMEM2FREQ,1);
	}
	if(BUTTON_PRESSED(BUTTON_START))
	{
		initStart();
	}
}

void initLose()
{
	REG_DISPCTL = MODE0 | BG1_ENABLE;
	loadPalette(loseBackgroundPal);
	REG_BG1CNT = CBB(1) | SBB(25) | BG_SIZE0;
	DMANow(3, loseBackgroundTiles,&CHARBLOCKBASE[1], loseBackgroundTilesLen/2);
	DMANow(3, loseBackgroundMap,&SCREENBLOCKBASE[25], loseBackgroundMapLen/2);
	stopSound();
	state = LOSE;
}
void updateLose(){
	if(BUTTON_PRESSED(BUTTON_START))
	{
		initStart();
	}
}

void animate()
{
	animatePlayer();
	animateEnemies();
}


void updateOAM()
{
	int off=0;
	switch (player.actionState)
	{
		case IDLE:
			break;
		case ATTACK:
			off+=2+player.roninMode*23*(player.currFrame>0)*(player.currFrame<9);
			break;
		case BLOCK:
			off+=12;
			break;
		case RUN:
			off+=16;
			break;
		case JUMP:
			off+=22;
			break;
	}
	//player OAM
	DMANow(3, &playerSpritesTiles[(player.currFrame + off)*1024], &CHARBLOCKBASE[4], (64*64/4));
	shadowOAM[player.layer].attr0 = ((ROWMASK & player.row)) | ATTR0_4BPP | ATTR0_SQUARE | (((player.invulTime/5%2)^1) || player.roninMode ? 0 : ATTR0_HIDE);
	shadowOAM[player.layer].attr1 = ((COLMASK & player.col)) | ATTR1_SIZE64 | player.left<<12;
	shadowOAM[player.layer].attr2 = ATTR2_PALBANK(player.roninMode?2:0);
	//enemies OAM
	for(int i=0;i<10;i++){
		int eOff=0;
		switch (enemies[i].actionState)
		{
			case EIDLE:
				break;
			case ERUN:
				eOff=1;
				break;
			case EBLOCK:
				eOff=5;
				break;
			case EATTACK:
				eOff=5;
				break;
			case EDOWN:
				eOff=8;
				break;
		}
		shadowOAM[1+i].attr0 = ((ROWMASK & enemies[i].row)) | ATTR0_4BPP | ATTR0_SQUARE | (enemies[i].spawned && enemies[i].onScreen? 0 :ATTR0_HIDE);
		shadowOAM[1+i].attr1 = ((COLMASK & enemies[i].col)) | ATTR1_SIZE32 | enemies[i].left<<12;
		shadowOAM[1+i].attr2 = 64+((eOff+enemies[i].currFrame)*16) | ATTR2_PALBANK(1);
	}//
	//HitCounter
	//10's place
	shadowOAM[player.layer+20].attr0 = (ROWMASK & (comboCount.row3)) | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[player.layer+20].attr1 = (COLMASK & (comboCount.col1)) | ATTR1_SIZE8;
	shadowOAM[player.layer+20].attr2 = (1010+player.combo/10) | ATTR2_PALBANK(15);
	//1's place
	shadowOAM[player.layer+21].attr0 = (ROWMASK & (comboCount.row3)) | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[player.layer+21].attr1 = (COLMASK & (comboCount.col1+6)) | ATTR1_SIZE8;
	shadowOAM[player.layer+21].attr2 = (1010+player.combo%10) | ATTR2_PALBANK(15);
	//H
	shadowOAM[player.layer+22].attr0 = (ROWMASK & (comboCount.row3)) | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[player.layer+22].attr1 = (COLMASK & (comboCount.col1+13)) | ATTR1_SIZE8;
	shadowOAM[player.layer+22].attr2 = 1020 | ATTR2_PALBANK(15);
	//I
	shadowOAM[player.layer+23].attr0 = (ROWMASK & (comboCount.row3)) | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[player.layer+23].attr1 = (COLMASK & (comboCount.col1+19)) | ATTR1_SIZE8;
	shadowOAM[player.layer+23].attr2 = 1021 | ATTR2_PALBANK(15);
	//T
	shadowOAM[player.layer+24].attr0 = (ROWMASK & (comboCount.row3)) | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[player.layer+24].attr1 = (COLMASK & (comboCount.col1+25)) | ATTR1_SIZE8;
	shadowOAM[player.layer+24].attr2 = 1022 | ATTR2_PALBANK(15);
	//player HP status
	for(int i=0;i<5;i++){
		shadowOAM[player.layer+25+i].attr0 = (ROWMASK & (comboCount.row1)) | ATTR0_4BPP | ATTR0_SQUARE | (player.hp/(i+1)? 0 : ATTR0_HIDE);
		shadowOAM[player.layer+25+i].attr1 = (COLMASK & (comboCount.col1+i*8)) | ATTR1_SIZE8;
		shadowOAM[player.layer+25+i].attr2 = 1008| ATTR2_PALBANK(15);
	}
	//player energy status
	for(int i=0;i<5;i++){
		shadowOAM[player.layer+30+i].attr0 = (ROWMASK & (comboCount.row1+8)) | ATTR0_4BPP | ATTR0_SQUARE | (player.energy*5/(i+1)/player.maxEnergy? 0 : ATTR0_HIDE);
		shadowOAM[player.layer+30+i].attr1 = (COLMASK & (comboCount.col1+i*8)) | ATTR1_SIZE8;
		shadowOAM[player.layer+30+i].attr2 = 1009 | ATTR2_PALBANK(15);
	}
	shadowOAM[player.layer+36].attr0 = (ROWMASK & (4)) | ATTR0_4BPP | ATTR0_WIDE | (((player.bigCol>>4)<stageColLimit-240) && ((advanceTimer/25%2)&1)? 0 : ATTR0_HIDE);
	shadowOAM[player.layer+36].attr1 = (COLMASK & (220)) | ATTR1_SIZE8;
	shadowOAM[player.layer+36].attr2 = 1006 | ATTR2_PALBANK(15);
}

void hideSprites()
{
    int i;for(i = 0; i < 128; i++)
    {
         shadowOAM[i].attr0 |= ATTR0_HIDE;
    }
}

void setupSounds()
{
    REG_SOUNDCNT_X = SND_ENABLED;

	REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_TO_BOTH | 
                     DSA_TIMER0 | 
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 | 
                     DSB_OUTPUT_TO_BOTH | 
                     DSB_TIMER1 | 
                     DSB_FIFO_RESET;

	REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;
	
        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;
	
        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);
	
        REG_TM0CNT = 0;
	
        REG_TM0D = -ticks;
        REG_TM0CNT = TIMER_ON;
	
		soundA.data = sound;
		soundA.length = length;
		soundA.frequency = frequency;
		soundA.loops = loops;
		soundA.isPlaying = 1;
		soundA.shouldPlay = 1;
		soundA.duration = (VBLANK_FREQ*length)/frequency;
		soundA.vbCount = 0;
}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops, int priority) {
	if(priority>=soundB.priority)
	{
        dma[2].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;
	
        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;

        soundB.data=sound;
        soundB.length=length;
		soundB.frequency=frequency;
		soundB.loops=loops;
		soundB.isPlaying=1;
		soundB.shouldPlay = 1;
		soundB.vbCount = 0;
		soundB.duration=(VBLANK_FREQ*soundB.length)/soundB.frequency;
		soundB.priority=priority;
	}
}

void pauseSound()
{
	soundA.isPlaying=0;
	soundB.isPlaying=0;
	REG_TM0CNT = 0;
	REG_TM1CNT = 0;
}

void unpauseSound()
{
	soundA.isPlaying=1;
	soundB.isPlaying=1;
	REG_TM0CNT = TIMER_ON;
	REG_TM1CNT = TIMER_ON;
}

void stopSound()
{
	soundA.isPlaying=0;
	soundB.isPlaying=0;
	soundA.shouldPlay=0;
	soundB.shouldPlay=0;
	dma[1].cnt=0;
	dma[2].cnt=0;
	REG_TM0CNT=0;
	REG_TM1CNT=0;
}

void setupInterrupts()
{
	REG_IME = 0;
	REG_INTERRUPT=(unsigned int)interruptHandler;
	REG_IE |= INT_VBLANK;
	REG_DISPSTAT |= INT_VBLANK_ENABLE;
	REG_IME = 1;
}

void interruptHandler()
{
	REG_IME = 0;
	if(REG_IF & INT_VBLANK)
	{
		if (soundA.isPlaying){
			soundA.vbCount++;
			if(soundA.vbCount>=soundA.duration)
			{
				if(soundA.loops)
				{
					playSoundA(soundA.data,soundA.length,soundA.frequency,soundA.loops);
				}
				else
				{
					dma[1].cnt=0;
					soundA.isPlaying=0;
					soundA.shouldPlay=0;
					REG_TM0CNT=0;
				}
			}
		}
		if (soundB.isPlaying){
			soundB.vbCount++;
			if(soundB.vbCount>=soundB.duration)
			{
				if(soundB.loops)
				{
					playSoundB(soundB.data,soundB.length,soundB.frequency,soundB.loops,soundB.priority);
				}
				else
				{
					dma[2].cnt=0;
					soundB.isPlaying=0;
					soundB.shouldPlay=0;
					soundB.priority=0;
					REG_TM1CNT=0;
				}
			}
		}

		REG_IF = INT_VBLANK; 
	}

	REG_IME = 1;
}