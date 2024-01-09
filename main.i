# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1



typedef unsigned short u16;
# 40 "myLib.h"
extern unsigned short *videoBuffer;

extern unsigned short *frontBuffer;
extern unsigned short *backBuffer;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, unsigned short color);
void fillScreen3(unsigned short color);
void drawImage3(const unsigned short* image, int row, int col, int height, int width);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, unsigned char colorIndex);
void fillScreen4(unsigned char color);

void drawBackgroundImage4(const unsigned short* image);
void drawImage4(const unsigned short* image, int row, int col, int height, int width);

void loadPalette(const unsigned short* palette);

void waitForVblank();
void flipPage();

void loadSBB(unsigned short *source, int, int, int);
void loadMap(unsigned short *source, int, int, int);
# 84 "myLib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;
# 94 "myLib.h"
void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control);






typedef volatile struct
{
        volatile const void *src;
        volatile const void *dst;
        volatile unsigned int cnt;
} DMA;

extern DMA *dma;
# 215 "myLib.h"
typedef struct { u16 tileimg[8192]; } charblock;
typedef struct { u16 tilemap[1024]; } screenblock;
# 276 "myLib.h"
typedef struct{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
}OBJ_ATTR;



int sbbHeight;
int sbbWidth;
# 2 "main.c" 2
# 1 "player.h" 1
# 21 "player.h"
extern const unsigned short playerTiles[16384];


extern const unsigned short playerPal[256];
# 3 "main.c" 2
# 1 "startBackground.h" 1
# 22 "startBackground.h"
extern const unsigned short startBackgroundTiles[3552];


extern const unsigned short startBackgroundMap[1024];


extern const unsigned short startBackgroundPal[256];
# 4 "main.c" 2
# 1 "mainBackground.h" 1
# 22 "mainBackground.h"
extern const unsigned short mainBackgroundTiles[1680];


extern const unsigned short mainBackgroundMap[2048];


extern const unsigned short mainBackgroundPal[256];
# 5 "main.c" 2
# 1 "gameBackground.h" 1
# 22 "gameBackground.h"
extern const unsigned short gameBackgroundTiles[1488];


extern const unsigned short gameBackgroundMap[4096];


extern const unsigned short gameBackgroundPal[256];
# 6 "main.c" 2
# 1 "collisionmap.h" 1
# 20 "collisionmap.h"
extern const unsigned short collisionmapBitmap[393216];
# 7 "main.c" 2
# 1 "titleSong.h" 1
# 20 "titleSong.h"
extern const unsigned char titleSong[105927];
# 8 "main.c" 2
# 1 "GameM1.h" 1
# 20 "GameM1.h"
extern const unsigned char gameM1[212291];
# 9 "main.c" 2
# 1 "GameM2.h" 1
# 20 "GameM2.h"
extern const unsigned char gameM2[423322];
# 10 "main.c" 2
# 1 "swordSound1.h" 1
# 20 "swordSound1.h"
extern const unsigned char swordSound1[2618];
# 11 "main.c" 2
# 1 "swordSound2.h" 1
# 20 "swordSound2.h"
extern const unsigned char swordSound2[2749];
# 12 "main.c" 2
# 1 "swordSound3.h" 1
# 20 "swordSound3.h"
extern const unsigned char swordSound3[2068];
# 13 "main.c" 2
# 1 "swordMiss.h" 1
# 20 "swordMiss.h"
extern const unsigned char swordMiss[2809];
# 14 "main.c" 2
# 1 "swordBlock.h" 1
# 20 "swordBlock.h"
extern const unsigned char swordBlock[13608];
# 15 "main.c" 2
# 1 "enemySwordHit.h" 1
# 20 "enemySwordHit.h"
extern const unsigned char enemySwordHit[8749];
# 16 "main.c" 2
# 1 "heal.h" 1
# 20 "heal.h"
extern const unsigned char heal[5603];
# 17 "main.c" 2
# 1 "playerSprites.h" 1
# 21 "playerSprites.h"
extern const unsigned short playerSpritesTiles[35840];


extern const unsigned short playerSpritesPal[256];
# 18 "main.c" 2
# 1 "enemySprites.h" 1
# 21 "enemySprites.h"
extern const unsigned short enemySpritesTiles[3072];


extern const unsigned short enemySpritesPal[256];
# 19 "main.c" 2
# 1 "gameStructs.h" 1
enum { START, INSTRUCT, GAME, PAUSE, WIN, LOSE};
enum { IDLE, ATTACK, BLOCK, RUN, JUMP, HIT};
enum { DEMOIDLE, DEMOATTACK, DEMOBLOCK, DEMORUN, DEMOJUMP};
enum { EIDLE, ERUN, EBLOCK, EATTACK, EDOWN};


typedef struct
{
 int row;
 int col;
 int width;
 int height;
 int range;

 int bigRow;
 int bigCol;
 int rdel;
 int cdel;

 int aniCounter;
 int actionState;
 int prevAniState;
 int left;
    int currFrame;
    int queueSwing;
    int layer;

    int hp;
    int maxHp;
    int invulTime;
    int demoAirTime;
    int combo;
    int energy;
    int maxEnergy;
    int roninMode;
    int roninTime;
    int attackTimer;
    int cheatMode;
} PLAYER;

typedef struct
{
 int row;
 int col;
 int width;
 int height;
 int range;

 int bigRow;
 int bigCol;
 int rdel;
 int cdel;

 int aniCounter;
 int actionState;
 int prevAniState;
 int left;
    int currFrame;
    int queueSwing;
    int layer;

    int hp;
    int bars;
    int maxHp;

    int aiState;
    int aiTimer;
    int inPhase;
    int onScreen;
    int spawned;
    int dying;
} ENEMY;

typedef struct
{
 int row1;
 int col1;
 int row2;
 int col2;
 int row3;
 int col3;
} HUD;

typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int shouldPlay;
    int loops;
    int duration;
    int priority;
    int vbCount;
}SOUND;

PLAYER player;
ENEMY boss;
HUD comboCount;

SOUND soundA;
SOUND soundB;
SOUND swordSound;
SOUND healSound;
SOUND swordMissSound;
SOUND swordBlockSound;
SOUND enemySwordHitSound;


void initSounds();
void initPlayer();
void resetEnemies();
void animatePlayer();
void demoAnimatePlayer();
void spawnEnemy(ENEMY* enemy, int bigRow, int bigCol, int layer,int left);
void spawnNumEnemies(int num, int bigRow, int bigCol, int layer, int left);
int playerCheckMoveRight(unsigned short* collisionmapBitmap, int offset);
int playerCheckMoveLeft(unsigned short* collisionmapBitmap, int offset);
int playerCheckMoveUp(unsigned short* collisionmapBitmap, int offset);
int playerCheckMoveDown(unsigned short* collisionmapBitmap, int offset);

int playerCheckCanRun();
int playerCheckCanAttack();
int playerCheckCanBlock();
int playerCheckCanJump();
int playerCheckShouldIdle();
int playerCheckShouldDemoIdle();
int playerCheckShouldStandStill();

void playerMoveRightLimit();
void playerMoveLeftLimit();
void playerMoveUpLimit();
void playerMoveDownLimit();

void playerFall();
void playerMove();
void playerAttack();
void updatePlayerScreenPosition();
int playerAttackEnemy(ENEMY* e);

int enemyCheckMoveRight(ENEMY* e, unsigned short* collisionmapBitmap, int offset);
int enemyCheckMoveLeft(ENEMY* e, unsigned short* collisionmapBitmap, int offset);
int enemyCheckMoveDown(ENEMY* e, unsigned short* collisionmapBitmap, int offset);
int enemyCheckMoveUp(ENEMY* e, unsigned short* collisionmapBitmap, int offset);
int enemyCheckAhead(ENEMY* enemy);
void enemyMoveRightLimit(ENEMY* e);
void enemyMoveLeftLimit(ENEMY* e);
void enemyMoveUpLimit(ENEMY* e);
void enemyMoveDownLimit(ENEMY* e);
void enemiesDoAI();
void enemiesAttack();
void enemiesMove();
void animateEnemy(ENEMY* e);
void animateEnemies();

int enemyAttackPlayer(ENEMY* e);
void updateEnemyScreenPosition(ENEMY* e);
void updateEnemiesScreenPosition();

void gameDirector();

ENEMY enemies[10];
int BG3hOff;
int stageColLimit;
int advanceTimer;
int stageMinColLimit;
int enemiesLeft[5];
int spawnEventList[12];
int spawnEventNum;
int phase;
int stageComplete;
# 20 "main.c" 2
# 1 "effects.h" 1
# 21 "effects.h"
extern const unsigned short effectsTiles[16384];


extern const unsigned short effectsPal[256];
# 21 "main.c" 2
# 1 "instructionsBackground.h" 1
# 22 "instructionsBackground.h"
extern const unsigned short instructionsBackgroundTiles[1888];


extern const unsigned short instructionsBackgroundMap[12288];


extern const unsigned short instructionsBackgroundPal[256];
# 22 "main.c" 2
# 1 "instructionsBackCanvas.h" 1
# 22 "instructionsBackCanvas.h"
extern const unsigned short instructionsBackCanvasTiles[16];


extern const unsigned short instructionsBackCanvasMap[1024];


extern const unsigned short instructionsBackCanvasPal[256];
# 23 "main.c" 2
# 1 "winBackground.h" 1
# 22 "winBackground.h"
extern const unsigned short winBackgroundTiles[2048];


extern const unsigned short winBackgroundMap[1024];


extern const unsigned short winBackgroundPal[256];
# 24 "main.c" 2
# 1 "loseBackground.h" 1
# 22 "loseBackground.h"
extern const unsigned short loseBackgroundTiles[2080];


extern const unsigned short loseBackgroundMap[1024];


extern const unsigned short loseBackgroundPal[256];
# 25 "main.c" 2
# 1 "pauseBackground.h" 1
# 22 "pauseBackground.h"
extern const unsigned short pauseBackgroundTiles[2064];


extern const unsigned short pauseBackgroundMap[1024];


extern const unsigned short pauseBackgroundPal[256];
# 26 "main.c" 2
# 1 "Ending.h" 1
# 20 "Ending.h"
extern const unsigned char Ending[423657];
# 27 "main.c" 2
# 1 "winText.h" 1
# 22 "winText.h"
extern const unsigned short winTextTiles[1168];


extern const unsigned short winTextMap[1024];


extern const unsigned short winTextPal[256];
# 28 "main.c" 2





unsigned int buttons;
unsigned int oldButtons;
extern int sbbHeight;
extern int sbbWidth=4;
extern int stageComplete;



int sbbX = 0;
int sbbY = 0;



void initStart();
void updateStart();
void initInstructions();
void updateInstructions();
void initGame();
void updateGame();
void initPause();
void updatePause();
void initWin();
void updateWin();
void initLose();
void updateLose();
void hideSprites();
void animate();
void updateOAM();
void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops, int priority);
void pauseSound();
void unpauseSound();
void muteSound();
void unmuteSound();
void stopSound();
void setupInterrupts();
void interruptHandler();


int state = START;

int hOff=0;
int vOff=0;
int hCamOff;
int vCamOff;

OBJ_ATTR shadowOAM[128];

const unsigned char* spaceSound;
int measure = 0;

unsigned short scanLineCounter;

int main()
{

 setupInterrupts();
 setupSounds();
 initSounds();

 initStart();

 while(1)
 {
  oldButtons = buttons;
  buttons = *(volatile unsigned int *)0x04000130;

  switch(state)
  {
   case START:
    updateStart();
    break;
   case INSTRUCT:
    updateInstructions();
    break;
   case GAME:
    updateGame();
    break;
   case PAUSE:
    updatePause();
    break;
   case WIN:
    updateWin();
    break;
   case LOSE:
    updateLose();
    break;
  }
 }
 return 0;
}

void initStart()
{
 *(unsigned short *)0x4000000 = 0 | (1<<8);

 *(volatile unsigned short*)0x4000008 = 0 << 2 | 27 << 8 | 1<<14 | ((2) << 12);

 loadPalette(startBackgroundPal);

 DMANow(3, startBackgroundTiles,&((charblock *)0x6000000)[0], 7104/2);

 DMANow(3, startBackgroundMap,&((screenblock *)0x6000000)[27], 2048/2);

 hideSprites();

 hOff = 0;
 vOff = 0;
 *(volatile unsigned short *)0x04000010 = hOff;
 *(volatile unsigned short *)0x04000012 = vOff;
 state = START;
 playSoundA(titleSong,105927,11025, 1);


 hOff = 0;
 vOff = 0;
 *(volatile unsigned short *)0x04000010 = hOff;
 *(volatile unsigned short *)0x04000012 = vOff;
 initPlayer();
 resetEnemies();

 state = START;
}

void updateStart()
{
 if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
 {
  initGame();
  unpauseGame();
 }
 if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2)))))
 {
  initInstructions();
 }
 waitForVblank();
 *(volatile unsigned short *)0x04000010 = hOff;
 *(volatile unsigned short *)0x04000014 = hOff/2;
}

void initInstructions()
{
 hideSprites();
 int off=0;
 initPlayer();
 switch (player.actionState)
 {
  case IDLE:
   break;
  case ATTACK:
   off+=2;
   break;
  case BLOCK:
   off+=12;
   break;
  case RUN:
   off+=16;
   break;
  case JUMP:
   off+=22;
   break;
 }
 DMANow(3, &playerSpritesTiles[(player.currFrame + off)*1024], &((charblock *)0x6000000)[4], (64*64/4));
 shadowOAM[player.layer].attr0 = (0xFF & player.row) | (0 << 13) | (0 << 14) | ((player.invulTime/5%2)^1 ? 0 : (2 << 8));
 shadowOAM[player.layer].attr1 = (0x1FF & player.col) | (3 << 14) | player.left<<12;
 shadowOAM[player.layer].attr2 = 0 | ((1)<<10);
 DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
 *(unsigned short *)0x4000000 = 0 | (1<<8) | (1<<9) | (1 << 12) | (1 << 6);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 27 << 8 | 0<<14 | ((2) << 12);
 *(volatile unsigned short*)0x400000A = 1 << 2 | 26 << 8 | 0<<14 | ((2) << 12);

 int backgroundOff=0;
 switch(player.actionState)
 {
  case IDLE:
   backgroundOff=0;
   break;
  case ATTACK:
   backgroundOff=5-player.left;
   break;
  case BLOCK:
   backgroundOff=8-player.left;
   break;
  case RUN:
   backgroundOff=2-player.left;
   break;
  case JUMP:
   backgroundOff=11-player.left;
   break;
 }
 loadPalette(instructionsBackgroundPal);
 DMANow(3, instructionsBackCanvasTiles,&((charblock *)0x6000000)[0], 3776/2);
 DMANow(3, instructionsBackCanvasMap,&((screenblock *)0x6000000)[27], 2048/2);
 DMANow(3, instructionsBackgroundTiles,&((charblock *)0x6000000)[1], 3776/2);
 DMANow(3, instructionsBackgroundMap+(1024*backgroundOff),&((screenblock *)0x6000000)[26], 2048/2);

 *(volatile unsigned short *)0x04000010 = 0;
 *(volatile unsigned short *)0x04000012 = 0;
 *(volatile unsigned short *)0x04000014 = 0;
 *(volatile unsigned short *)0x04000016 = 0;
 hOff = 0;
 vOff = 96;
 player.col=183;
 player.row=48;

 state = INSTRUCT;
}

void updateInstructions()
{
 if (playerCheckShouldDemoIdle())
 {
  player.actionState=IDLE;
 }
 if((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6)))))
 {
  player.demoAirTime=30;
  player.actionState=JUMP;
 }

 if((~(*(volatile unsigned int *)0x04000130) & ((1<<5))))
 {
  if (player.actionState!=ATTACK || player.currFrame<2)
  {
   player.left=1;
  }
  if(!player.actionState || player.actionState==RUN)
  {
   player.actionState=RUN;
  }
  player.cdel=-32;
 }
 if((~(*(volatile unsigned int *)0x04000130) & ((1<<4))))
 {
  if (player.actionState!=ATTACK || player.currFrame<2)
  {
   player.left=0;
  }
  if(!player.actionState || player.actionState==RUN)
  {
   player.actionState=RUN;
  }
  player.cdel=32;
 }

 if((~(*(volatile unsigned int *)0x04000130) & ((1<<1))))
 {
  if(playerCheckCanBlock())
  {
   player.actionState=BLOCK;
   if (player.prevAniState!=BLOCK) player.currFrame=0;
   player.cdel=0;
  }
 }

 if((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))))
 {
  if(playerCheckCanBlock())player.cdel=0;
  if(player.actionState!=JUMP)
  {
   player.actionState=ATTACK;
   player.cdel=0;
   if (!player.queueSwing) player.queueSwing=1;
  }
 }
 waitForVblank();
 demoAnimatePlayer();
 int off=0;
 switch (player.actionState)
 {
  case IDLE:
   break;
  case ATTACK:
   off+=2;
   break;
  case BLOCK:
   off+=12;
   break;
  case RUN:
   off+=16;
   break;
  case JUMP:
   off+=22;
   break;
 }

 DMANow(3, &playerSpritesTiles[(player.currFrame + off)*1024], &((charblock *)0x6000000)[4], (64*64/4));
 shadowOAM[player.layer].attr0 = (0xFF & player.row) | (0 << 13) | (0 << 14) | ((player.invulTime/5%2)^1 ? 0 : (2 << 8));
 shadowOAM[player.layer].attr1 = (0x1FF & (player.col-46*player.left)) | (3 << 14) | player.left<<12;
 shadowOAM[player.layer].attr2 = 0 | ((1)<<10) | ((3)<<12);
 int backgroundOff=0;
 switch(player.actionState)
 {
  case IDLE:
   backgroundOff=0;
   break;
  case ATTACK:
   backgroundOff=5-player.left;
   break;
  case BLOCK:
   backgroundOff=8-player.left;
   break;
  case RUN:
   backgroundOff=2-player.left;
   break;
  case JUMP:
   backgroundOff=11-player.left;
   break;
 }
 DMANow(3, instructionsBackgroundTiles,&((charblock *)0x6000000)[1], 32/2);
 DMANow(3, instructionsBackgroundMap+(backgroundOff*1024),&((screenblock *)0x6000000)[26], 2048/2);
 DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
 {
  initGame();
  unpauseGame();
 }
 if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2)))))
 {
  initStart();
 }
}


void initGame()
{
 loadPalette(mainBackgroundPal);
 *(unsigned short *)0x4000000 = 0 | (1<<8) | (1<<9) | (1 << 12) | (1 << 6);

 *(volatile unsigned short*)0x400000A = 1 << 2 | 24 << 8 | 1<<14 | ((2) << 12);
 DMANow(3, mainBackgroundTiles,&((charblock *)0x6000000)[1], 3360/2);
 DMANow(3, mainBackgroundMap,&((screenblock *)0x6000000)[24], 4096/2);
 DMANow(3, mainBackgroundMap,&((screenblock *)0x6000000)[25], 4096/2);

 *(volatile unsigned short*)0x4000008 = 0 << 2 | 26 << 8 | 1<<14;
 DMANow(3, gameBackgroundTiles,&((charblock *)0x6000000)[0], 2976/2);
 loadMap(gameBackgroundMap,sbbX,1,26);

 *(unsigned short *)0x4000000 = 0 | (1<<8) | (1<<9) | (1 << 12) | (1 << 6);

 hOff = 0;
 vOff = 96;
 *(volatile unsigned short *)0x04000010 = hOff%256;
 *(volatile unsigned short *)0x04000012 = vOff;
 *(volatile unsigned short *)0x04000014 = hOff/8;
 *(volatile unsigned short *)0x04000016 = 0;

 DMANow(3, effectsTiles, &((charblock *)0x6000000)[4], 32768/2);
 DMANow(3, enemySpritesTiles, (&((screenblock *)0x6000000)[33]), (6144/2));

 hideSprites();

    comboCount.row1=1;
    comboCount.col1=2;
    comboCount.row2=10;
    comboCount.col2=2;
    comboCount.row3=19;
    comboCount.col3=8;

    initPlayer();
    resetEnemies();

    stageColLimit=256;
    stageMinColLimit=0;
    phase=0;
    spawnEventNum=0;
    advanceTimer=0;

    playSoundA(gameM1,212291,11025,0);

    state = GAME;
}

void updateGame()
{
 if(soundA.data==gameM1 && !soundA.shouldPlay)
 {
  playSoundA(gameM2,423322,11025,1);
 }
 if (soundA.isPlaying==0)unpauseSound();
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
 {
  pauseSound();
  initPause();
 }
 if (playerCheckShouldStandStill())
 {
  player.cdel=0;
 }
 if (playerCheckShouldIdle())
 {
  player.actionState=IDLE;
 }
 if((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6)))))
 {
  if (playerCheckCanJump())
  {
   player.rdel-=84;
   player.actionState=JUMP;

  }
 }

 if((~(*(volatile unsigned int *)0x04000130) & ((1<<5))))
 {
  if (player.actionState!=ATTACK || player.currFrame<2)
  {
   player.left=1;
  }
  if(!player.actionState || player.actionState==RUN)
  {
   player.actionState=RUN;
  }
  player.cdel=-32;
 }
 if((~(*(volatile unsigned int *)0x04000130) & ((1<<4))))
 {
  if (player.actionState!=ATTACK || player.currFrame<2)
  {
   player.left=0;
  }
  if(!player.actionState || player.actionState==RUN)
  {
   player.actionState=RUN;
  }
  player.cdel=32;
 }

 if((~(*(volatile unsigned int *)0x04000130) & ((1<<1))))
 {
  if(playerCheckCanBlock())
  {
   player.actionState=BLOCK;
   if (player.prevAniState!=BLOCK) player.currFrame=0;
   player.cdel=0;
  }
 }

 if((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))))
 {
  if(playerCheckCanAttack())
  {
   player.actionState=ATTACK;
   player.cdel=0;
   if (!player.queueSwing) player.queueSwing=1;
  }
 }
 gameDirector();
 enemiesDoAI();
 enemiesMove();

 playerAttack();
 playerMove();
 updatePlayerScreenPosition();
 updateEnemiesScreenPosition();

 sbbX=(hOff/256);

 char shouldReload = 0;

 loadMap(gameBackgroundMap,sbbX,sbbWidth,26);

 *(volatile unsigned short *)0x04000010 = hOff;
 *(volatile unsigned short *)0x04000012 = vOff;

 if ((player.bigCol>>4)>(1025-player.width) && enemiesLeft[phase]==1)
 {
  initWin();
 }
 if (player.hp<=0)
 {
  initLose();
 }
 player.energy-=(6+(player.roninTime/60>=3)*6*(player.roninTime/60-3))*player.roninMode*(!player.cheatMode);
 player.invulTime-=1*(player.invulTime>0);
 player.roninTime+=1*player.roninMode;
 if(player.energy<=0 && player.roninMode)
 {
  player.roninMode=0;
  player.energy=0;
  player.range=30;
  player.invulTime=0;
  player.roninTime=0;
 }
 if(player.energy>=player.maxEnergy){
  player.roninMode=1;
  player.range=50;
  player.energy=player.maxEnergy;
 }
 if (player.roninMode)
 {
  if (player.invulTime<=0) player.invulTime+=60;
 }

 animate();
 updateOAM();

 DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
 waitForVblank();
}

void initPause(){
 *(unsigned short *)0x4000000 = 0 | (1<<9);
 loadPalette(pauseBackgroundPal);
 *(volatile unsigned short*)0x400000A = 1 << 2 | 25 << 8 | 0<<14;
 DMANow(3, pauseBackgroundTiles,&((charblock *)0x6000000)[1], 4128/2);
 DMANow(3, pauseBackgroundMap,&((screenblock *)0x6000000)[25], 2048/2);
 state=PAUSE;
}
void unpauseGame(){
 *(unsigned short *)0x4000000 = 0 | (1<<8) | (1<<9) | (1 << 12) | (1 << 6);
 loadPalette(mainBackgroundPal);
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 26 << 8 | 1<<14;
 DMANow(3, gameBackgroundTiles,&((charblock *)0x6000000)[0], 2976/2);
 loadMap(gameBackgroundMap,sbbX,4,26);

 *(volatile unsigned short*)0x400000A = 1 << 2 | 24 << 8 | 1<<14;
 DMANow(3, mainBackgroundTiles,&((charblock *)0x6000000)[1], 3360/2);
 DMANow(3, mainBackgroundMap,&((screenblock *)0x6000000)[24], 4096/2);
 DMANow(3, mainBackgroundMap,&((screenblock *)0x6000000)[25], 4096/2);
 state=GAME;
}
void updatePause(){
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
 {
  unpauseGame();
 }
 if((~(*(volatile unsigned int *)0x04000130) & ((1<<9))) && (!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8)))))
 {
  player.cheatMode=!player.cheatMode;
  if (player.cheatMode)player.energy=player.maxEnergy;
 }
 if((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2)))))
 {
  initStart();
 }
}

void initWin()
{
 *(unsigned short *)0x4000000 = 0 | (1<<9) | (1<<8);
 loadPalette(winBackgroundPal);
 *(volatile unsigned short *)0x04000010 = 0;
 *(volatile unsigned short *)0x04000012 = 0;
 *(volatile unsigned short *)0x04000014 = 0;
 *(volatile unsigned short *)0x04000016 = 0;
 *(volatile unsigned short*)0x4000008 = 0 << 2 | 27 << 8 | 0<<14 | 3;
 *(volatile unsigned short*)0x400000A = 1 << 2 | 26 << 8 | 0<<14 | ((5) << 12) | 1;
 DMANow(3, winBackgroundTiles,&((charblock *)0x6000000)[0], 4096/2);
 DMANow(3, winBackgroundMap,&((screenblock *)0x6000000)[27], 2048/2);
 DMANow(3, winTextTiles,&((charblock *)0x6000000)[1], 2336/2);
 DMANow(3, winTextMap,&((screenblock *)0x6000000)[26], 2048/2);
 stopSound();
 playSoundA(Ending,423657,11025,1);
 state = WIN;
}
void updateWin(){
 if(soundA.data==gameM1 && !soundA.shouldPlay)
 {
  playSoundA(gameM2,423322,11025,1);
 }
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
 {
  initStart();
 }
}

void initLose()
{
 *(unsigned short *)0x4000000 = 0 | (1<<9);
 loadPalette(loseBackgroundPal);
 *(volatile unsigned short*)0x400000A = 1 << 2 | 25 << 8 | 0<<14;
 DMANow(3, loseBackgroundTiles,&((charblock *)0x6000000)[1], 4160/2);
 DMANow(3, loseBackgroundMap,&((screenblock *)0x6000000)[25], 2048/2);
 stopSound();
 state = LOSE;
}
void updateLose(){
 if((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
 {
  initStart();
 }
}

void animate()
{
 animatePlayer();
 animateEnemies();
}


void updateOAM()
{
 int off=0;
 switch (player.actionState)
 {
  case IDLE:
   break;
  case ATTACK:
   off+=2+player.roninMode*23*(player.currFrame>0)*(player.currFrame<9);
   break;
  case BLOCK:
   off+=12;
   break;
  case RUN:
   off+=16;
   break;
  case JUMP:
   off+=22;
   break;
 }

 DMANow(3, &playerSpritesTiles[(player.currFrame + off)*1024], &((charblock *)0x6000000)[4], (64*64/4));
 shadowOAM[player.layer].attr0 = ((0xFF & player.row)) | (0 << 13) | (0 << 14) | (((player.invulTime/5%2)^1) || player.roninMode ? 0 : (2 << 8));
 shadowOAM[player.layer].attr1 = ((0x1FF & player.col)) | (3 << 14) | player.left<<12;
 shadowOAM[player.layer].attr2 = ((player.roninMode?2:0)<<12);

 for(int i=0;i<10;i++){
  int eOff=0;
  switch (enemies[i].actionState)
  {
   case EIDLE:
    break;
   case ERUN:
    eOff=1;
    break;
   case EBLOCK:
    eOff=5;
    break;
   case EATTACK:
    eOff=5;
    break;
   case EDOWN:
    eOff=8;
    break;
  }
  shadowOAM[1+i].attr0 = ((0xFF & enemies[i].row)) | (0 << 13) | (0 << 14) | (enemies[i].spawned && enemies[i].onScreen? 0 :(2 << 8));
  shadowOAM[1+i].attr1 = ((0x1FF & enemies[i].col)) | (2 << 14) | enemies[i].left<<12;
  shadowOAM[1+i].attr2 = 64+((eOff+enemies[i].currFrame)*16) | ((1)<<12);
 }


 shadowOAM[player.layer+20].attr0 = (0xFF & (comboCount.row3)) | (0 << 13) | (0 << 14);
 shadowOAM[player.layer+20].attr1 = (0x1FF & (comboCount.col1)) | (0 << 14);
 shadowOAM[player.layer+20].attr2 = (1010+player.combo/10) | ((15)<<12);

 shadowOAM[player.layer+21].attr0 = (0xFF & (comboCount.row3)) | (0 << 13) | (0 << 14);
 shadowOAM[player.layer+21].attr1 = (0x1FF & (comboCount.col1+6)) | (0 << 14);
 shadowOAM[player.layer+21].attr2 = (1010+player.combo%10) | ((15)<<12);

 shadowOAM[player.layer+22].attr0 = (0xFF & (comboCount.row3)) | (0 << 13) | (0 << 14);
 shadowOAM[player.layer+22].attr1 = (0x1FF & (comboCount.col1+13)) | (0 << 14);
 shadowOAM[player.layer+22].attr2 = 1020 | ((15)<<12);

 shadowOAM[player.layer+23].attr0 = (0xFF & (comboCount.row3)) | (0 << 13) | (0 << 14);
 shadowOAM[player.layer+23].attr1 = (0x1FF & (comboCount.col1+19)) | (0 << 14);
 shadowOAM[player.layer+23].attr2 = 1021 | ((15)<<12);

 shadowOAM[player.layer+24].attr0 = (0xFF & (comboCount.row3)) | (0 << 13) | (0 << 14);
 shadowOAM[player.layer+24].attr1 = (0x1FF & (comboCount.col1+25)) | (0 << 14);
 shadowOAM[player.layer+24].attr2 = 1022 | ((15)<<12);

 for(int i=0;i<5;i++){
  shadowOAM[player.layer+25+i].attr0 = (0xFF & (comboCount.row1)) | (0 << 13) | (0 << 14) | (player.hp/(i+1)? 0 : (2 << 8));
  shadowOAM[player.layer+25+i].attr1 = (0x1FF & (comboCount.col1+i*8)) | (0 << 14);
  shadowOAM[player.layer+25+i].attr2 = 1008| ((15)<<12);
 }

 for(int i=0;i<5;i++){
  shadowOAM[player.layer+30+i].attr0 = (0xFF & (comboCount.row1+8)) | (0 << 13) | (0 << 14) | (player.energy*5/(i+1)/player.maxEnergy? 0 : (2 << 8));
  shadowOAM[player.layer+30+i].attr1 = (0x1FF & (comboCount.col1+i*8)) | (0 << 14);
  shadowOAM[player.layer+30+i].attr2 = 1009 | ((15)<<12);
 }
 shadowOAM[player.layer+36].attr0 = (0xFF & (4)) | (0 << 13) | (1 << 14) | (((player.bigCol>>4)<stageColLimit-240) && ((advanceTimer/25%2)&1)? 0 : (2 << 8));
 shadowOAM[player.layer+36].attr1 = (0x1FF & (220)) | (0 << 14);
 shadowOAM[player.layer+36].attr2 = 1006 | ((15)<<12);
}

void hideSprites()
{
    int i;for(i = 0; i < 128; i++)
    {
         shadowOAM[i].attr0 |= (2 << 8);
    }
}

void setupSounds()
{
    *(volatile u16 *)0x04000084 = (1<<7);

 *(volatile u16*)0x04000082 = (1<<1) |
                     (1<<2) |
                     (3<<8) |
                     (0<<10) |
                     (1<<11) |
                     (1<<3) |
                     (3<<12) |
                     (1<<14) |
                     (1<<15);

 *(u16*)0x04000080 = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(1, sound, (u16*)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000102 = 0;

        *(volatile unsigned short*)0x4000100 = -ticks;
        *(volatile unsigned short*)0x4000102 = (1<<7);

  soundA.data = sound;
  soundA.length = length;
  soundA.frequency = frequency;
  soundA.loops = loops;
  soundA.isPlaying = 1;
  soundA.shouldPlay = 1;
  soundA.duration = ((59.727)*length)/frequency;
  soundA.vbCount = 0;
}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops, int priority) {
 if(priority>=soundB.priority)
 {
        dma[2].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(2, sound, (u16*)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000106 = 0;

        *(volatile unsigned short*)0x4000104 = -ticks;
        *(volatile unsigned short*)0x4000106 = (1<<7);

        soundB.data=sound;
        soundB.length=length;
  soundB.frequency=frequency;
  soundB.loops=loops;
  soundB.isPlaying=1;
  soundB.shouldPlay = 1;
  soundB.vbCount = 0;
  soundB.duration=((59.727)*soundB.length)/soundB.frequency;
  soundB.priority=priority;
 }
}

void pauseSound()
{
 soundA.isPlaying=0;
 soundB.isPlaying=0;
 *(volatile unsigned short*)0x4000102 = 0;
 *(volatile unsigned short*)0x4000106 = 0;
}

void unpauseSound()
{
 soundA.isPlaying=1;
 soundB.isPlaying=1;
 *(volatile unsigned short*)0x4000102 = (1<<7);
 *(volatile unsigned short*)0x4000106 = (1<<7);
}

void stopSound()
{
 soundA.isPlaying=0;
 soundB.isPlaying=0;
 soundA.shouldPlay=0;
 soundB.shouldPlay=0;
 dma[1].cnt=0;
 dma[2].cnt=0;
 *(volatile unsigned short*)0x4000102=0;
 *(volatile unsigned short*)0x4000106=0;
}

void setupInterrupts()
{
 *(unsigned short*)0x4000208 = 0;
 *(unsigned int*)0x3007FFC=(unsigned int)interruptHandler;
 *(unsigned short*)0x4000200 |= 1 << 0;
 *(unsigned short*)0x4000004 |= 1 << 3;
 *(unsigned short*)0x4000208 = 1;
}

void interruptHandler()
{
 *(unsigned short*)0x4000208 = 0;
 if(*(volatile unsigned short*)0x4000202 & 1 << 0)
 {
  if (soundA.isPlaying){
   soundA.vbCount++;
   if(soundA.vbCount>=soundA.duration)
   {
    if(soundA.loops)
    {
     playSoundA(soundA.data,soundA.length,soundA.frequency,soundA.loops);
    }
    else
    {
     dma[1].cnt=0;
     soundA.isPlaying=0;
     soundA.shouldPlay=0;
     *(volatile unsigned short*)0x4000102=0;
    }
   }
  }
  if (soundB.isPlaying){
   soundB.vbCount++;
   if(soundB.vbCount>=soundB.duration)
   {
    if(soundB.loops)
    {
     playSoundB(soundB.data,soundB.length,soundB.frequency,soundB.loops,soundB.priority);
    }
    else
    {
     dma[2].cnt=0;
     soundB.isPlaying=0;
     soundB.shouldPlay=0;
     soundB.priority=0;
     *(volatile unsigned short*)0x4000106=0;
    }
   }
  }

  *(volatile unsigned short*)0x4000202 = 1 << 0;
 }

 *(unsigned short*)0x4000208 = 1;
}
