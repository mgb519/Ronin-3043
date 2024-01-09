
//{{BLOCK(gameForeground)

//======================================================================
//
//	gameForeground, 256x1024@4, 
//	+ palette 256 entries, not compressed
//	+ 43 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x128 
//	Total size: 512 + 1376 + 8192 = 10080
//
//	Time-stamp: 2016-12-01, 12:19:06
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEFOREGROUND_H
#define GRIT_GAMEFOREGROUND_H

#define gameForegroundTilesLen 1376
extern const unsigned short gameForegroundTiles[688];

#define gameForegroundMapLen 8192
extern const unsigned short gameForegroundMap[4096];

#define gameForegroundPalLen 512
extern const unsigned short gameForegroundPal[256];

#endif // GRIT_GAMEFOREGROUND_H

//}}BLOCK(gameForeground)
