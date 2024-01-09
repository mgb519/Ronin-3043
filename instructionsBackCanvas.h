
//{{BLOCK(instructionsBackCanvas)

//======================================================================
//
//	instructionsBackCanvas, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 32 + 2048 = 2592
//
//	Time-stamp: 2016-11-22, 12:46:24
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSBACKCANVAS_H
#define GRIT_INSTRUCTIONSBACKCANVAS_H

#define instructionsBackCanvasTilesLen 32
extern const unsigned short instructionsBackCanvasTiles[16];

#define instructionsBackCanvasMapLen 2048
extern const unsigned short instructionsBackCanvasMap[1024];

#define instructionsBackCanvasPalLen 512
extern const unsigned short instructionsBackCanvasPal[256];

#endif // GRIT_INSTRUCTIONSBACKCANVAS_H

//}}BLOCK(instructionsBackCanvas)
