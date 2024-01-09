
//{{BLOCK(nearBackground)

//======================================================================
//
//	nearBackground, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 64 + 4096 = 4672
//
//	Time-stamp: 2016-11-21, 17:40:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_NEARBACKGROUND_H
#define GRIT_NEARBACKGROUND_H

#define nearBackgroundTilesLen 64
extern const unsigned short nearBackgroundTiles[32];

#define nearBackgroundMapLen 4096
extern const unsigned short nearBackgroundMap[2048];

#define nearBackgroundPalLen 512
extern const unsigned short nearBackgroundPal[256];

#endif // GRIT_NEARBACKGROUND_H

//}}BLOCK(nearBackground)
