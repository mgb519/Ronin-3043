
//{{BLOCK(loseBackground)

//======================================================================
//
//	loseBackground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 130 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4160 + 2048 = 6720
//
//	Time-stamp: 2016-11-21, 22:18:35
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSEBACKGROUND_H
#define GRIT_LOSEBACKGROUND_H

#define loseBackgroundTilesLen 4160
extern const unsigned short loseBackgroundTiles[2080];

#define loseBackgroundMapLen 2048
extern const unsigned short loseBackgroundMap[1024];

#define loseBackgroundPalLen 512
extern const unsigned short loseBackgroundPal[256];

#endif // GRIT_LOSEBACKGROUND_H

//}}BLOCK(loseBackground)
