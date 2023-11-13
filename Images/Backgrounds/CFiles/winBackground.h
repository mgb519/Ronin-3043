
//{{BLOCK(winBackground)

//======================================================================
//
//	winBackground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 128 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4096 + 2048 = 6656
//
//	Time-stamp: 2016-11-21, 22:19:54
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINBACKGROUND_H
#define GRIT_WINBACKGROUND_H

#define winBackgroundTilesLen 4096
extern const unsigned short winBackgroundTiles[2048];

#define winBackgroundMapLen 2048
extern const unsigned short winBackgroundMap[1024];

#define winBackgroundPalLen 512
extern const unsigned short winBackgroundPal[256];

#endif // GRIT_WINBACKGROUND_H

//}}BLOCK(winBackground)
