
//{{BLOCK(mainBackground)

//======================================================================
//
//	mainBackground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 105 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3360 + 2048 = 5920
//
//	Time-stamp: 2016-11-30, 16:30:06
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAINBACKGROUND_H
#define GRIT_MAINBACKGROUND_H

#define mainBackgroundTilesLen 3360
extern const unsigned short mainBackgroundTiles[1680];

#define mainBackgroundMapLen 2048
extern const unsigned short mainBackgroundMap[1024];

#define mainBackgroundPalLen 512
extern const unsigned short mainBackgroundPal[256];

#endif // GRIT_MAINBACKGROUND_H

//}}BLOCK(mainBackground)
