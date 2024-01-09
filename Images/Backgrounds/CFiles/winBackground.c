
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

const unsigned short winBackgroundTiles[2048] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0202,0x0202,
	0x2020,0x2020,0x0202,0x0202,0x2020,0x2020,0x0202,0x0202,
	0x2020,0x2020,0x0202,0x0202,0x2020,0x2020,0x0202,0x0202,
	0x2020,0x2020,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x3232,0x3232,0x2323,0x2323,0x3232,0x3232,
	0x2323,0x2323,0x3232,0x3232,0x2323,0x2323,0x3232,0x3232,
	0x2323,0x2323,0x3232,0x3232,0x3333,0x3333,0x3333,0x3333,
	0x2323,0x2323,0x3232,0x3232,0x2323,0x2323,0x3232,0x3232,
	0x2323,0x2323,0x3232,0x3232,0x3333,0x3113,0x3333,0x1441,

	0x2323,0x2323,0x3232,0x3232,0x2323,0x2323,0x3232,0x3232,
	0x2323,0x2323,0x3232,0x3232,0x3333,0x3333,0x1333,0x3331,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x1441,0x3333,0x1441,0x3333,0x4413,0x3333,0x4413,
	0x3333,0x4413,0x3333,0x4133,0x3333,0x4133,0x3333,0x4133,
	0x3333,0x1441,0x3333,0x1441,0x1331,0x3144,0x1331,0x3144,
	0x1331,0x3144,0x4114,0x3314,0x4114,0x3314,0x4114,0x3314,

	0x3333,0x3113,0x3333,0x1441,0x3333,0x1441,0x3333,0x3111,
	0x1333,0x1444,0x1333,0x1444,0x3333,0x1441,0x3333,0x1441,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x1333,
	0x3333,0x4133,0x3333,0x4413,0x3333,0x4441,0x3333,0x1441,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x1111,0x3331,
	0x4444,0x3314,0x4444,0x3144,0x1111,0x1441,0x3333,0x3113,
	0x4133,0x3314,0x4133,0x3314,0x4133,0x3314,0x4113,0x1114,
	0x4441,0x4444,0x4441,0x4444,0x4113,0x1114,0x4133,0x3314,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x1333,
	0x3331,0x4133,0x3331,0x4413,0x3333,0x4441,0x3333,0x1441,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x1111,0x3331,
	0x4444,0x3314,0x4444,0x3144,0x1111,0x1444,0x3333,0x1441,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x1133,0x1113,
	0x4413,0x4441,0x4413,0x4444,0x4413,0x1114,0x4413,0x3331,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3311,0x1133,
	0x3144,0x4413,0x1444,0x4413,0x1441,0x4133,0x3113,0x4133,

	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3311,
	0x1331,0x3144,0x1331,0x3144,0x4114,0x3314,0x4114,0x3314,
	0x3333,0x1333,0x3333,0x1333,0x3333,0x1333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x4444,0x3331,0x4444,0x3331,0x4444,0x3331,0x1441,0x3333,
	0x1441,0x3333,0x3113,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x1441,0x3333,0x1441,0x1333,0x1441,0x4133,0x4444,
	0x4133,0x4444,0x1333,0x1111,0x3333,0x3333,0x3333,0x3333,

	0x3333,0x1441,0x3333,0x1441,0x3331,0x4441,0x3314,0x4413,
	0x3314,0x4133,0x3331,0x1333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3113,0x1111,0x1441,0x4444,0x3144,
	0x4444,0x3314,0x1111,0x3331,0x3333,0x3333,0x3333,0x3333,
	0x4133,0x3314,0x4133,0x3314,0x4133,0x1114,0x4133,0x4444,
	0x1333,0x4444,0x3333,0x1111,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x1441,0x3333,0x1441,0x1111,0x1444,0x4444,0x3144,
	0x4444,0x3314,0x1111,0x3331,0x3333,0x3333,0x3333,0x3333,

	0x4413,0x3331,0x4413,0x3331,0x4413,0x3331,0x4413,0x3331,
	0x4413,0x3331,0x1133,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x1333,0x3333,0x1333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x1333,0x3333,0x1333,0x3333,0x4133,0x3333,0x1333,
	0x4444,0x3331,0x4444,0x3331,0x1441,0x3333,0x1441,0x3333,
	0x3144,0x3333,0x3144,0x3333,0x3314,0x3333,0x3331,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x5353,0x5353,0x3535,0x3535,
	0x5353,0x5353,0x3535,0x3535,0x5555,0x5555,0x5555,0x5555,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5551,0x1555,0x5516,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5515,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5115,0x1555,0x1661,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5551,0x5155,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x1155,0x5511,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5115,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x1155,

	0x5555,0x5555,0x5555,0x5555,0x1111,0x1111,0x7777,0x7777,
	0x7777,0x7777,0x6666,0x7666,0x7777,0x6777,0x7777,0x7667,
	0x5555,0x5555,0x5555,0x5511,0x1111,0x1166,0x6777,0x6667,
	0x7677,0x7767,0x7767,0x7776,0x7776,0x7776,0x6777,0x7777,
	0x5555,0x5555,0x5555,0x5555,0x1111,0x1111,0x7777,0x7777,
	0x7776,0x7777,0x7667,0x6777,0x6677,0x7666,0x7677,0x7777,
	0x6155,0x5166,0x7611,0x1667,0x7767,0x6767,0x7667,0x7767,
	0x7676,0x7767,0x7677,0x7667,0x7677,0x6677,0x6777,0x6677,

	0x5555,0x5555,0x5555,0x5555,0x1111,0x1111,0x7776,0x7777,
	0x7667,0x7777,0x6777,0x7776,0x7777,0x6667,0x7776,0x7777,
	0x5555,0x5555,0x5555,0x5555,0x1111,0x5551,0x6777,0x5516,
	0x7677,0x1167,0x7667,0x6667,0x6776,0x7776,0x6777,0x7777,
	0x5555,0x1161,0x1155,0x6676,0x6615,0x7767,0x7761,0x7767,
	0x7776,0x7767,0x7777,0x7767,0x7777,0x7767,0x7777,0x7767,
	0x5555,0x5555,0x5511,0x1555,0x1166,0x6151,0x6677,0x7616,
	0x7777,0x7767,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,

	0x6115,0x6766,0x6661,0x7666,0x6676,0x6677,0x7667,0x7777,
	0x7767,0x7777,0x7767,0x7777,0x7766,0x7777,0x7776,0x7777,
	0x5516,0x1615,0x5167,0x6661,0x1676,0x7677,0x7766,0x7667,
	0x7677,0x7767,0x6777,0x7767,0x6777,0x7776,0x6777,0x7776,
	0x5555,0x5555,0x5551,0x1155,0x5516,0x6611,0x1167,0x7766,
	0x6677,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x6611,0x1166,0x6766,0x6677,0x6777,0x7766,0x6777,0x7766,
	0x6677,0x7767,0x7667,0x7677,0x7767,0x7677,0x7766,0x6777,

	0x5511,0x5555,0x1166,0x5551,0x6677,0x1116,0x7667,0x6667,
	0x7677,0x7777,0x6777,0x7777,0x7777,0x7776,0x7777,0x7767,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5511,0x5555,
	0x1166,0x1111,0x6677,0x6666,0x7777,0x6777,0x7777,0x6677,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x1111,0x5111,0x6666,0x1666,0x7776,0x6777,0x6667,0x7776,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x1155,
	0x1155,0x6611,0x6611,0x7766,0x7766,0x7777,0x7777,0x7777,

	0x5555,0x5555,0x5555,0x1555,0x1155,0x1555,0x6611,0x6111,
	0x7766,0x6166,0x6677,0x7676,0x7777,0x7767,0x7777,0x7677,
	0x1661,0x5551,0x6776,0x5116,0x7776,0x1667,0x7777,0x6777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x5555,0x6615,0x5555,0x7761,0x1551,0x7776,0x6116,0x7777,
	0x6167,0x7777,0x6677,0x7777,0x6777,0x7776,0x7777,0x7766,
	0x5511,0x5555,0x5166,0x1111,0x1667,0x6666,0x6667,0x7777,
	0x7677,0x7777,0x6777,0x7777,0x6777,0x7777,0x7777,0x7776,

	0x5555,0x5555,0x1111,0x5551,0x6666,0x1116,0x7777,0x6667,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x5555,0x5555,0x5555,0x5555,0x5551,0x5555,0x1116,0x5551,
	0x6667,0x1116,0x7766,0x6667,0x7667,0x7777,0x6677,0x7776,
	0x5555,0x5555,0x5555,0x5555,0x1555,0x5551,0x6115,0x5116,
	0x7661,0x1667,0x7776,0x6777,0x7777,0x7777,0x7777,0x7777,
	0x5555,0x5555,0x1555,0x1551,0x6155,0x6116,0x7615,0x7667,
	0x7761,0x7777,0x7776,0x7777,0x7767,0x7777,0x7667,0x7777,

	0x1661,0x5551,0x6776,0x5116,0x7777,0x1667,0x7777,0x6777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x5555,0x5555,0x5555,0x5555,0x5551,0x1115,0x1116,0x6661,
	0x6667,0x7776,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x5555,0x5555,0x5555,0x5555,0x1555,0x1511,0x6111,0x6166,
	0x7666,0x7677,0x7667,0x7777,0x6677,0x7777,0x7777,0x7776,
	0x5115,0x5555,0x1661,0x1155,0x6776,0x6611,0x7777,0x7766,
	0x7777,0x7767,0x7777,0x7677,0x7777,0x7677,0x7777,0x7677,

	0x5555,0x5555,0x5511,0x5555,0x1166,0x1111,0x6677,0x7777,
	0x7777,0x7766,0x7777,0x6677,0x7777,0x7777,0x7777,0x7777,
	0x5555,0x5555,0x5555,0x5555,0x1111,0x1111,0x7777,0x7777,
	0x7777,0x7667,0x6666,0x7776,0x7677,0x7777,0x6667,0x7777,
	0x6677,0x7776,0x7766,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x6777,0x7777,0x7677,0x7777,0x7677,0x7777,0x7767,0x7777,
	0x7767,0x7777,0x7767,0x7777,0x7767,0x7777,0x7766,0x7777,

	0x7677,0x7777,0x7677,0x7777,0x6777,0x7777,0x6777,0x7777,
	0x6777,0x7777,0x6777,0x6677,0x7777,0x6766,0x7777,0x6776,
	0x6777,0x7777,0x7777,0x7776,0x7777,0x7776,0x7777,0x7776,
	0x7777,0x7767,0x7777,0x7767,0x7766,0x7767,0x7677,0x7767,
	0x7776,0x7777,0x7766,0x7777,0x7667,0x7777,0x7677,0x7777,
	0x7677,0x6777,0x6777,0x6777,0x6777,0x6776,0x7677,0x6776,
	0x6677,0x7777,0x7667,0x7777,0x7767,0x7777,0x7766,0x7777,
	0x7776,0x7777,0x7767,0x7777,0x7677,0x7777,0x6777,0x7776,

	0x7777,0x7767,0x7777,0x7767,0x7777,0x7767,0x7777,0x7767,
	0x7777,0x7767,0x7777,0x7767,0x7777,0x7667,0x7777,0x6776,
	0x7777,0x6777,0x7777,0x6777,0x7777,0x6777,0x7777,0x6677,
	0x7777,0x7677,0x7777,0x7766,0x6777,0x7777,0x7677,0x7777,
	0x7776,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7776,0x7777,0x7776,0x7777,0x7776,0x7777,0x7776,
	0x6777,0x7776,0x7667,0x7776,0x6776,0x7776,0x6777,0x7777,

	0x7777,0x6777,0x7777,0x6777,0x7777,0x6777,0x7777,0x6777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x6777,0x7777,0x6777,
	0x7776,0x6777,0x7777,0x6777,0x7777,0x7777,0x7776,0x7777,
	0x7766,0x7777,0x7676,0x7777,0x7776,0x7777,0x7777,0x7777,
	0x7777,0x7677,0x7777,0x6677,0x7777,0x6777,0x7777,0x6677,
	0x7777,0x7767,0x7777,0x6767,0x7777,0x6767,0x7777,0x6766,
	0x7777,0x7667,0x7777,0x7766,0x6777,0x7776,0x6676,0x7777,
	0x6666,0x7777,0x7777,0x7666,0x6777,0x6777,0x7777,0x7776,

	0x7777,0x7766,0x7777,0x7677,0x7777,0x6777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7766,0x7777,0x6677,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7776,0x7777,0x7766,0x7777,
	0x7667,0x7777,0x6777,0x7777,0x6777,0x7777,0x6777,0x7776,
	0x7777,0x7677,0x7777,0x7677,0x7777,0x6777,0x7777,0x6777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x6777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7776,0x6677,0x7776,0x6767,0x7766,0x7776,0x7667,0x7776,

	0x7777,0x7667,0x7777,0x6677,0x7777,0x6777,0x7777,0x7777,
	0x7766,0x7777,0x6677,0x7777,0x7776,0x7766,0x7767,0x7677,
	0x7777,0x7776,0x7777,0x7767,0x7777,0x7677,0x7776,0x6677,
	0x6666,0x7777,0x7767,0x7666,0x7776,0x6777,0x7776,0x6777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7776,0x7777,0x6667,0x6666,0x7776,0x7777,0x7777,0x7777,
	0x7777,0x7776,0x7777,0x7766,0x7777,0x7767,0x7777,0x7667,
	0x7777,0x7677,0x7766,0x6677,0x6677,0x6766,0x7777,0x6677,

	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7776,0x7777,0x7777,0x7777,
	0x6677,0x7777,0x6777,0x7776,0x7777,0x7767,0x7777,0x6677,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7767,0x7776,0x7666,
	0x6766,0x6677,0x7667,0x7677,0x6677,0x7677,0x6767,0x7677,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7776,0x7777,0x7767,0x7777,0x6677,0x7777,

	0x7777,0x7767,0x7777,0x7677,0x7777,0x6777,0x7777,0x6777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7766,0x6777,0x7677,
	0x7777,0x7677,0x7777,0x6777,0x7777,0x6777,0x7776,0x6677,
	0x7766,0x6767,0x6767,0x7776,0x7667,0x7777,0x7767,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7776,0x7777,0x7667,0x7777,0x6777,0x6766,0x7777,0x7677,
	0x7767,0x7766,0x7767,0x7676,0x7776,0x7667,0x7776,0x7666,
	0x6676,0x7666,0x6766,0x7776,0x6677,0x7777,0x7677,0x7777,

	0x7777,0x6777,0x6677,0x7676,0x7766,0x7767,0x7767,0x7777,
	0x7677,0x7777,0x6777,0x7777,0x7777,0x7776,0x7777,0x7767,
	0x7677,0x6667,0x6777,0x7776,0x7777,0x7776,0x7777,0x7767,
	0x7777,0x7767,0x7777,0x7767,0x7777,0x7767,0x7777,0x7677,
	0x6777,0x6677,0x7666,0x7677,0x7777,0x7667,0x7777,0x7767,
	0x7777,0x7766,0x7777,0x7776,0x6777,0x7776,0x6777,0x7777,
	0x6777,0x7766,0x7777,0x6666,0x7777,0x7776,0x7777,0x7776,
	0x7777,0x7776,0x7777,0x7767,0x7777,0x7767,0x7777,0x7767,

	0x7767,0x6776,0x7776,0x7776,0x7777,0x7767,0x7777,0x7767,
	0x7777,0x7677,0x7777,0x7677,0x7777,0x7677,0x7777,0x6777,
	0x7776,0x7667,0x7766,0x6777,0x7666,0x7777,0x7677,0x7777,
	0x6677,0x7777,0x6777,0x7776,0x7777,0x7776,0x7777,0x7766,
	0x6777,0x6776,0x7666,0x7667,0x7777,0x7767,0x7777,0x7766,
	0x6777,0x7776,0x6777,0x7777,0x6677,0x7777,0x7677,0x7777,
	0x7766,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,

	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x6777,0x7777,0x6677,0x7777,0x7677,0x7777,0x7667,0x7777,
	0x7767,0x7777,0x7767,0x7777,0x7766,0x7777,0x7776,0x7777,
	0x7777,0x6777,0x7777,0x7677,0x7777,0x7677,0x7777,0x7677,
	0x7777,0x7677,0x7777,0x6777,0x7777,0x6777,0x7777,0x6777,
	0x6777,0x7776,0x6777,0x7777,0x6677,0x7777,0x7667,0x7777,
	0x7767,0x7777,0x7767,0x7777,0x7767,0x6777,0x7767,0x6677,

	0x7776,0x7767,0x7776,0x7677,0x7767,0x6777,0x7767,0x7777,
	0x7767,0x7777,0x7677,0x7777,0x7666,0x7777,0x6777,0x7777,
	0x7777,0x6666,0x7777,0x7777,0x7777,0x7777,0x7776,0x6777,
	0x7766,0x6677,0x7767,0x7667,0x7677,0x7766,0x6677,0x7776,
	0x6666,0x6666,0x6667,0x7777,0x6766,0x7666,0x7776,0x6677,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7776,0x6666,0x6667,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7776,0x7777,0x7667,0x7777,0x6677,0x7777,0x6777,0x7776,

	0x6766,0x7777,0x7677,0x7777,0x6777,0x7777,0x6777,0x7777,
	0x6777,0x7777,0x7777,0x7776,0x7777,0x7776,0x7777,0x7767,
	0x7767,0x6777,0x7677,0x7777,0x6777,0x7777,0x7777,0x7776,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7776,0x7777,0x7766,0x7777,0x7667,0x7777,0x6677,0x7777,
	0x6777,0x7776,0x7777,0x7776,0x7777,0x7767,0x7777,0x7767,
	0x7776,0x7777,0x7776,0x7777,0x7767,0x7777,0x7767,0x7777,
	0x7677,0x7777,0x6777,0x7777,0x6777,0x7776,0x7777,0x7767,

	0x7777,0x7667,0x7777,0x6677,0x7777,0x6777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7766,0x7777,0x7767,0x7777,
	0x7667,0x7777,0x7677,0x7777,0x6677,0x7777,0x6777,0x7777,
	0x7777,0x7777,0x7777,0x6666,0x7777,0x7767,0x7777,0x7767,
	0x7777,0x7776,0x7777,0x7776,0x7777,0x7776,0x7777,0x7776,
	0x6776,0x6677,0x6777,0x6777,0x7777,0x6776,0x7777,0x7776,
	0x7777,0x7767,0x7777,0x7767,0x7777,0x7767,0x7777,0x7677,

	0x7777,0x7766,0x7776,0x6677,0x7766,0x7777,0x7767,0x7777,
	0x7667,0x7777,0x6677,0x7777,0x6777,0x7777,0x6777,0x7776,
	0x6677,0x6677,0x7766,0x7766,0x7777,0x7776,0x6777,0x7776,
	0x6677,0x7777,0x7677,0x7777,0x7667,0x7777,0x7767,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,0x7777,
	0x7777,0x7777,0x7777,0x7777,0x7777,0x6777,0x7777,0x6777,
	0x7677,0x7777,0x7667,0x7777,0x7767,0x7777,0x7766,0x7777,
	0x7776,0x7777,0x7776,0x7777,0x7776,0x7777,0x7777,0x7777,
};

const unsigned short winBackgroundMap[1024] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0001,
	0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
	0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
	0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
	0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0001,0x0001,

	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0001,0x0001,
	0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
	0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
	0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,
	0x0004,0x0004,0x0004,0x0004,0x0004,0x0004,0x0001,0x0001,

	0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,
	0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,
	0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,
	0x0005,0x0005,0x0005,0x0005,0x0005,0x0005,0x0001,0x0001,
	0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,
	0x0006,0x0006,0x0007,0x0007,0x0006,0x0006,0x0006,0x0008,
	0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,
	0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0001,0x0001,

	0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,
	0x0009,0x0009,0x000A,0x000B,0x000C,0x000D,0x000E,0x000F,
	0x0010,0x0011,0x0012,0x0013,0x0014,0x0009,0x0009,0x0009,
	0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,0x0001,0x0001,
	0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,
	0x0009,0x0009,0x0015,0x0016,0x0017,0x0018,0x0019,0x001A,
	0x0018,0x001B,0x001C,0x001D,0x001E,0x0009,0x0009,0x0009,
	0x0009,0x0009,0x0009,0x0009,0x0009,0x0009,0x0001,0x0001,

	0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,
	0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,
	0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,
	0x001F,0x001F,0x001F,0x001F,0x001F,0x001F,0x0001,0x0001,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0001,0x0001,

	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0001,0x0001,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0001,0x0001,

	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0001,0x0001,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0020,0x0020,0x0020,0x0020,0x0020,0x0001,0x0001,

	0x0020,0x0020,0x0020,0x0021,0x0020,0x0020,0x0022,0x0020,
	0x0023,0x0024,0x0020,0x0025,0x0020,0x0020,0x0020,0x0020,
	0x0020,0x0026,0x0027,0x0020,0x0020,0x0020,0x0020,0x0020,
	0x0026,0x0020,0x0020,0x0020,0x0020,0x0020,0x0001,0x0001,
	0x0028,0x0029,0x002A,0x002B,0x002C,0x002D,0x002E,0x002F,
	0x0030,0x0031,0x0032,0x0033,0x0034,0x0035,0x0036,0x0037,
	0x0038,0x0039,0x003A,0x003B,0x003C,0x003D,0x003E,0x003F,
	0x0040,0x0041,0x0042,0x0043,0x0044,0x0045,0x0001,0x0001,

	0x0046,0x0047,0x0048,0x0049,0x004A,0x004B,0x004C,0x004D,
	0x004E,0x004F,0x0050,0x0051,0x0052,0x0053,0x0054,0x0055,
	0x0056,0x0057,0x0058,0x0059,0x005A,0x005B,0x005C,0x005D,
	0x005E,0x005F,0x0060,0x0061,0x0062,0x0063,0x0001,0x0001,
	0x0064,0x0065,0x0066,0x0067,0x0068,0x0069,0x006A,0x006B,
	0x006C,0x006D,0x006E,0x006C,0x006F,0x0070,0x0071,0x0072,
	0x0073,0x0074,0x0075,0x0076,0x0077,0x0078,0x0079,0x007A,
	0x007B,0x007C,0x007D,0x004E,0x007E,0x007F,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
};

const unsigned short winBackgroundPal[256] __attribute__((aligned(4)))=
{
	0x6000,0x0000,0x7D08,0x221F,0x03E0,0x7A69,0x1084,0x2108,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(winBackground)
