
//{{BLOCK(winText)

//======================================================================
//
//	winText, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 73 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 2336 + 2048 = 4896
//
//	Time-stamp: 2016-12-12, 16:37:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINTEXT_H
#define GRIT_WINTEXT_H

#define winTextTilesLen 2336
extern const unsigned short winTextTiles[1168];

#define winTextMapLen 2048
extern const unsigned short winTextMap[1024];

#define winTextPalLen 512
extern const unsigned short winTextPal[256];

#endif // GRIT_WINTEXT_H

//}}BLOCK(winText)
