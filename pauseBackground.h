
//{{BLOCK(pauseBackground)

//======================================================================
//
//	pauseBackground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 129 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4128 + 2048 = 6688
//
//	Time-stamp: 2016-11-21, 22:19:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSEBACKGROUND_H
#define GRIT_PAUSEBACKGROUND_H

#define pauseBackgroundTilesLen 4128
extern const unsigned short pauseBackgroundTiles[2064];

#define pauseBackgroundMapLen 2048
extern const unsigned short pauseBackgroundMap[1024];

#define pauseBackgroundPalLen 512
extern const unsigned short pauseBackgroundPal[256];

#endif // GRIT_PAUSEBACKGROUND_H

//}}BLOCK(pauseBackground)
