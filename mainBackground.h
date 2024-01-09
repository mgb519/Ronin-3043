
//{{BLOCK(mainBackground)

//======================================================================
//
//	mainBackground, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 105 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 3360 + 4096 = 7968
//
//	Time-stamp: 2016-12-05, 17:04:50
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAINBACKGROUND_H
#define GRIT_MAINBACKGROUND_H

#define mainBackgroundTilesLen 3360
extern const unsigned short mainBackgroundTiles[1680];

#define mainBackgroundMapLen 4096
extern const unsigned short mainBackgroundMap[2048];

#define mainBackgroundPalLen 512
extern const unsigned short mainBackgroundPal[256];

#endif // GRIT_MAINBACKGROUND_H

//}}BLOCK(mainBackground)
