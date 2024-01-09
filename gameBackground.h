
//{{BLOCK(gameBackground)

//======================================================================
//
//	gameBackground, 256x1024@4, 
//	+ palette 256 entries, not compressed
//	+ 93 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x128 
//	Total size: 512 + 2976 + 8192 = 11680
//
//	Time-stamp: 2016-12-02, 00:52:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBACKGROUND_H
#define GRIT_GAMEBACKGROUND_H

#define gameBackgroundTilesLen 2976
extern const unsigned short gameBackgroundTiles[1488];

#define gameBackgroundMapLen 8192
extern const unsigned short gameBackgroundMap[4096];

#define gameBackgroundPalLen 512
extern const unsigned short gameBackgroundPal[256];

#endif // GRIT_GAMEBACKGROUND_H

//}}BLOCK(gameBackground)
