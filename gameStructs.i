# 1 "gameStructs.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gameStructs.c"
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
# 2 "gameStructs.c" 2
# 1 "player.h" 1
# 21 "player.h"
extern const unsigned short playerTiles[16384];


extern const unsigned short playerPal[256];
# 3 "gameStructs.c" 2
# 1 "startBackground.h" 1
# 22 "startBackground.h"
extern const unsigned short startBackgroundTiles[3552];


extern const unsigned short startBackgroundMap[1024];


extern const unsigned short startBackgroundPal[256];
# 4 "gameStructs.c" 2
# 1 "mainBackground.h" 1
# 22 "mainBackground.h"
extern const unsigned short mainBackgroundTiles[1680];


extern const unsigned short mainBackgroundMap[2048];


extern const unsigned short mainBackgroundPal[256];
# 5 "gameStructs.c" 2
# 1 "nearBackground.h" 1
# 22 "nearBackground.h"
extern const unsigned short nearBackgroundTiles[32];


extern const unsigned short nearBackgroundMap[2048];


extern const unsigned short nearBackgroundPal[256];
# 6 "gameStructs.c" 2
# 1 "collisionmap.h" 1
# 20 "collisionmap.h"
extern const unsigned short collisionmapBitmap[393216];
# 7 "gameStructs.c" 2
# 1 "titleSong.h" 1
# 20 "titleSong.h"
extern const unsigned char titleSong[105927];
# 8 "gameStructs.c" 2
# 1 "GameM1.h" 1
# 20 "GameM1.h"
extern const unsigned char gameM1[212291];
# 9 "gameStructs.c" 2
# 1 "GameM2.h" 1
# 20 "GameM2.h"
extern const unsigned char gameM2[423322];
# 10 "gameStructs.c" 2
# 1 "swordSound1.h" 1
# 20 "swordSound1.h"
extern const unsigned char swordSound1[2618];
# 11 "gameStructs.c" 2
# 1 "swordSound2.h" 1
# 20 "swordSound2.h"
extern const unsigned char swordSound2[2749];
# 12 "gameStructs.c" 2
# 1 "swordSound3.h" 1
# 20 "swordSound3.h"
extern const unsigned char swordSound3[2068];
# 13 "gameStructs.c" 2
# 1 "swordMiss.h" 1
# 20 "swordMiss.h"
extern const unsigned char swordMiss[2809];
# 14 "gameStructs.c" 2
# 1 "swordBlock.h" 1
# 20 "swordBlock.h"
extern const unsigned char swordBlock[13608];
# 15 "gameStructs.c" 2
# 1 "enemySwordHit.h" 1
# 20 "enemySwordHit.h"
extern const unsigned char enemySwordHit[8749];
# 16 "gameStructs.c" 2
# 1 "heal.h" 1
# 20 "heal.h"
extern const unsigned char heal[5603];
# 17 "gameStructs.c" 2
# 1 "playerSprites.h" 1
# 21 "playerSprites.h"
extern const unsigned short playerSpritesTiles[35840];


extern const unsigned short playerSpritesPal[256];
# 18 "gameStructs.c" 2
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
# 19 "gameStructs.c" 2
# 1 "effects.h" 1
# 21 "effects.h"
extern const unsigned short effectsTiles[16384];


extern const unsigned short effectsPal[256];
# 20 "gameStructs.c" 2

extern int hOff;
extern int vOff;
int attackPattern[10]={9,2,2,2,9,2,2,2,9,6};
int eAttackPattern[10]={12,6,8};


int spawnEventList[12]={4, 5, 4, 4, 3, 2, 3, 3, 5, 4, 3, 3};
int spawnEventNum=0;
int gameDirectorTimer=0;
int phase=0;
int enemiesLeft[5]={4,9,12,19,1};
ENEMY enemies[10];

void initSounds()
{
    swordSound.data=swordSound1;
    swordSound.length=2618;
    swordSound.frequency=11025;

    swordMissSound.data=swordMiss;
    swordMissSound.length=2809;
    swordMissSound.frequency=11025;

    swordBlockSound.data=swordBlock;
    swordBlockSound.length=13608;
    swordBlockSound.frequency=11025;

    enemySwordHitSound.data=enemySwordHit;
    enemySwordHitSound.length=8749;
    enemySwordHitSound.frequency=11025;

    healSound.data=heal;
    healSound.length=5603;
    healSound.frequency=11025;
}

int playerAttackEnemy(ENEMY* enemy){
    if (!enemy->spawned || enemy->hp<-10)return 0;
 if (player.left && (enemy->bigRow>>4)-(player.bigRow>>4)<64 && ((player.bigCol>>4)>(enemy->bigCol>>4)) && (player.bigCol>>4)-((enemy->bigCol>>4)+enemy->width-1)<player.range)
 {
  return 1;
 }
 else if (!player.left && (enemy->bigRow>>4)-(player.bigRow>>4)<64 && ((player.bigCol>>4)+player.width-1<(enemy->bigCol>>4)+enemy->width-1) && ((enemy->bigCol>>4))-((player.bigCol>>4)+player.width-1)<player.range)
 {
  return 1;
 }
 return 0;
}

void initPlayer()
{

 player.col = 120-12;
 player.bigRow = 184<<4;
 player.bigCol = 2<<4;
 player.rdel = 0;
 player.cdel = 0;
 player.width = 18;
 player.height = 64;
 player.aniCounter = 0;
 player.actionState = IDLE;
 player.prevAniState = IDLE;
 player.left = 0;
    player.currFrame = 0;
 player.maxHp=5;
 player.layer=0;
    player.hp=player.maxHp;
    player.combo=0;
    player.roninMode=0;
    player.roninTime=0;
    player.invulTime=0;
    player.queueSwing=0;
    player.range=30;
    player.energy=1000;
    player.maxEnergy=1000;
    player.cheatMode=0;
}


int playerCheckMoveRight(unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[(((player.bigRow>>4))*(1536)+((player.bigCol>>4)+player.width-1+offset))

                                                          ] &&
            collisionmapBitmap[(((player.bigRow>>4)+player.height-4)*(1536)+((player.bigCol>>4)+player.width-1+offset))

                                                          ] &&
            ((player.bigCol+player.cdel)>>4)+player.width<stageColLimit);
}
int playerCheckMoveLeft(unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[(((player.bigRow>>4))*(1536)+((player.bigCol>>4)+offset))

                                           ] &&
            collisionmapBitmap[(((player.bigRow>>4)+player.height-2)*(1536)+((player.bigCol>>4)+offset))

                                           ] &&
            ((player.bigCol+player.cdel)>>4)>stageMinColLimit);
}
int playerCheckMoveUp(unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[(((player.bigRow>>4)+offset)*(1536)+((player.bigCol>>4)))

                                    ] &&
            collisionmapBitmap[(((player.bigRow>>4)+offset)*(1536)+((player.bigCol>>4)+player.width-1))

                                                   ]);
}
int playerCheckMoveDown(unsigned short* collisionmapBitmap, int offset)
{
 return ( collisionmapBitmap[(((player.bigRow>>4)+player.height-1+offset)*(1536)+((player.bigCol>>4)))

                                    ] &&
            collisionmapBitmap[(((player.bigRow>>4)+player.height-1+offset)*(1536)+((player.bigCol>>4)+player.width-1))

                                                   ]);
}
int playerCheckDemoMoveDown(unsigned short* collisionmapBitmap, int offset)
{
    return (player.demoAirTime>0);
}

void playerMoveRightLimit()
{
    while(!playerCheckMoveRight(collisionmapBitmap,(player.cdel>>4)))player.cdel-=(1<<4);
    player.bigCol+=player.cdel;
    if(player.cdel<0)player.cdel=0;
}
void playerMoveLeftLimit()
{
    while(!playerCheckMoveLeft(collisionmapBitmap,(player.cdel>>4)))player.cdel+=(1<<4);
    player.bigCol+=player.cdel;
    if(player.cdel>0)player.cdel=0;
}
void playerMoveUpLimit()
{
    while(!playerCheckMoveUp(collisionmapBitmap,(player.rdel>>4)))player.rdel+=(1<<4);
    player.bigRow+=player.rdel;
    if(player.rdel>0)player.rdel=0;
}
void playerMoveDownLimit()
{
    while(!playerCheckMoveDown(collisionmapBitmap,(player.rdel>>4)))player.rdel-=(1<<4);
    player.bigRow+=player.rdel;
    if(player.rdel<0)player.rdel=0;
}
void playerFall(){
    if (playerCheckMoveDown(collisionmapBitmap,1)) player.rdel+=3;
}
void playerAttack()
{
    if (player.attackTimer>0) player.attackTimer--;
    if (player.actionState==ATTACK){
        player.cdel=(2*(player.currFrame>2)+24*(player.currFrame>4))*(player.currFrame<9)-2*player.left*(2*(player.currFrame>2)+24*(player.currFrame>4))*(player.currFrame<9);
        if (player.aniCounter % attackPattern[player.currFrame]==0)
        if (player.currFrame==3 || player.currFrame==7)
        {
            switch(rand()%3)
            {
                case 0:
                    swordSound.data=swordSound1;
                    swordSound.length=2618;
                    swordSound.frequency=11025;
                    break;
                case 1:

                    swordSound.data=swordSound2;
                    swordSound.length=2749;
                    swordSound.frequency=11025;
                    break;
                case 2:
                    swordSound.data=swordSound3;
                    swordSound.length=2068;
                    swordSound.frequency=11025;
                break;
            }
            int hit=0;
            for(int i=0;i<10;i++)
            {
                if (enemies[i].spawned)
                {
                    if (playerAttackEnemy(&enemies[i]))
                    {
                        hit=1;
                        enemies[i].actionState=EIDLE;
                        enemies[i].hp-=(2+player.roninMode*(2+player.combo/4));
                        enemies[i].aiTimer=10+rand()%10;
                        enemyMoveDownLimit(&enemies[i]);
                        enemies[i].rdel=-12;
                        if((!player.left && enemyCheckMoveRight(&enemies[i],collisionmapBitmap,4)) || (player.left && enemyCheckMoveLeft(&enemies[i],collisionmapBitmap,4)))enemies[i].cdel=(1-2*player.left)*(24+rand()%(36-enemies[i].aiTimer));
                        if (enemies[i].hp<=0 && player.hp<5 && player.roninMode)
                        {
                            player.hp++;
                            playSoundB(healSound.data, healSound.length, healSound.frequency,0,8);
                        }
                    }
                }
            }

            if(boss.spawned)
            {
                if (playerAttackEnemy(&boss))
                {
                    hit=1;
                    boss.hp-=(2+player.roninMode*(2+player.combo/4));
                    enemyMoveDownLimit(&boss);
                    boss.rdel=-12;
                    if((!player.left && enemyCheckMoveRight(&boss,collisionmapBitmap,4)) || (player.left && enemyCheckMoveLeft(&boss,collisionmapBitmap,4)))boss.cdel=(1-2*player.left)*(24+rand()%(36-boss.aiTimer));
                    if (boss.hp<=0 && player.hp<5 && player.roninMode)
                    {
                        player.hp++;
                        playSoundB(healSound.data, healSound.length, healSound.frequency,0,8);
                    }
                }
            }

            player.energy+=(60*hit)+(player.combo*hit);
            player.combo+=hit;
            player.combo*=hit;
            if (player.combo==0) playSoundB(swordMissSound.data, swordMissSound.length, swordMissSound.frequency,0,2);
            else playSoundB(swordSound.data, swordSound.length, swordSound.frequency,0,4);
            if (player.combo>99) player.combo=99;
        }
        if (player.currFrame==9 && player.attackTimer<=0 ) player.attackTimer=8;
    }
}
void playerMove()
{
    if (player.rdel<0) playerMoveUpLimit();
    else playerMoveDownLimit();
    if (player.cdel>0) playerMoveRightLimit();
    else if (player.cdel<0)playerMoveLeftLimit();
    playerFall();
}

int playerCheckCanRun()
{
    if (player.left) return (playerCheckMoveLeft(collisionmapBitmap,-1) && (player.actionState==IDLE || player.actionState==RUN || player.actionState==JUMP));
    else return (playerCheckMoveRight(collisionmapBitmap,1) && (player.actionState==IDLE || player.actionState==RUN || player.actionState==JUMP));
}
int playerCheckCanAttack()
{
    if (player.left) return (playerCheckMoveLeft(collisionmapBitmap,1) && !playerCheckMoveDown(collisionmapBitmap,5) && player.attackTimer<=0);
    else return (playerCheckMoveRight(collisionmapBitmap,-1) && !playerCheckMoveDown(collisionmapBitmap,5)&& player.attackTimer<=0);
}
int playerCheckCanBlock()
{
    return (!playerCheckMoveDown(collisionmapBitmap,1) && (player.actionState==IDLE || player.actionState==RUN || player.actionState==BLOCK));
}
int playerCheckCanJump()
{
    return !playerCheckMoveDown(collisionmapBitmap,1);
}
int playerCheckShouldStandStill()
{
    return (!((~(*(volatile unsigned int *)0x04000130) & ((1<<5))) || (~(*(volatile unsigned int *)0x04000130) & ((1<<4)))));
}
int playerCheckShouldIdle()
{
    return (!playerCheckMoveDown(collisionmapBitmap,1)
            && !(player.actionState==ATTACK)
            && !((~(*(volatile unsigned int *)0x04000130) & ((1<<1))) && playerCheckCanBlock())
            && !((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6)))) && playerCheckCanJump())
            );
}
int playerCheckShouldDemoIdle()
{
    return (!playerCheckDemoMoveDown(collisionmapBitmap,1)
            && !(player.actionState==ATTACK)
            && !((~(*(volatile unsigned int *)0x04000130) & ((1<<1))) && playerCheckCanBlock())
            && !((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6)))) && playerCheckCanJump())
            );
}
void updatePlayerScreenPosition()
{
    player.row=(player.bigRow>>4)-vOff;
    player.col=(player.bigCol>>4)-(64-player.width)*player.left-hOff;
    if(!player.left && (player.bigCol>>4)-hOff!=72)
    {
        hOff+=(player.cdel>>4)+2;
        if ((player.bigCol>>4)-hOff<72) hOff=(player.bigCol>>4)-72;
    }
    if(player.left && (player.bigCol>>4)-hOff!=150)
    {
        hOff+=(player.cdel>>4)-2;

        if ((player.bigCol>>4)-hOff>150) hOff=(player.bigCol>>4)-150;
    }
    if (hOff>=stageColLimit-240)hOff=stageColLimit-240;
    if (hOff>=1024-240)hOff=1024-240;
    if(stageMinColLimit<hOff)stageMinColLimit=hOff;
    if(stageMinColLimit>stageColLimit-240)stageMinColLimit=stageColLimit-240;
    if (hOff<stageMinColLimit)hOff=stageMinColLimit;
}
void updateEnemyScreenPosition(ENEMY* enemy)
{
    enemy->row=(enemy->bigRow>>4)-vOff;
    enemy->col=(enemy->bigCol>>4)-(32-enemy->width)*enemy->left-hOff;
}
void updateEnemiesScreenPosition()
{
    for(int i=0;i<10;i++)
    {
        updateEnemyScreenPosition(&enemies[i]);
    }
}

int enemyCheckMoveRight(ENEMY *enemy, unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[(((enemy->bigRow>>4))*(1536)+((enemy->bigCol>>4)+enemy->width-1+offset))

                                                          ] &&
            collisionmapBitmap[(((enemy->bigRow>>4)+enemy->height-2)*(1536)+((enemy->bigCol>>4)+enemy->width-1+offset))

                                                          ] &&
            (((enemy->bigCol+enemy->cdel)>>4)+enemy->width<stageColLimit || !enemy->inPhase));
}
int enemyCheckMoveLeft(ENEMY *enemy, unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[(((enemy->bigRow>>4))*(1536)+((enemy->bigCol>>4)+offset))

                                           ] &&
            collisionmapBitmap[(((enemy->bigRow>>4)+enemy->height-2)*(1536)+((enemy->bigCol>>4)+offset))

                                           ] &&
            (((enemy->bigCol+enemy->cdel)>>4) >= stageMinColLimit || !enemy->inPhase));
}
int enemyCheckMoveUp(ENEMY *enemy, unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[(((enemy->bigRow>>4)+offset)*(1536)+((enemy->bigCol>>4)))

                                    ] &&
            collisionmapBitmap[(((enemy->bigRow>>4)+offset)*(1536)+((enemy->bigCol>>4)+enemy->width-1))

                                                   ]);
}
int enemyCheckMoveDown(ENEMY *enemy, unsigned short* collisionmapBitmap, int offset)
{
    return ( collisionmapBitmap[(((enemy->bigRow>>4)+enemy->height-1+offset)*(1536)+((enemy->bigCol>>4)))

                                    ] &&
            collisionmapBitmap[(((enemy->bigRow>>4)+enemy->height-1+offset)*(1536)+((enemy->bigCol>>4)+enemy->width-1))

                                                   ]);
}


void enemyMoveRightLimit(ENEMY *enemy)
{
    while(!enemyCheckMoveRight(enemy, collisionmapBitmap,(enemy->cdel>>4)))enemy->cdel-=(1<<4);
    enemy->bigCol+=enemy->cdel;
    if(enemy->cdel<0)enemy->cdel=0;
    if(((enemy->bigCol+enemy->cdel)>>4)+enemy->width<stageColLimit && ((enemy->bigCol+enemy->cdel)>>4)>=stageMinColLimit)enemy->inPhase=1;
}

void enemyMoveLeftLimit(ENEMY *enemy)
{
    while(!enemyCheckMoveLeft(enemy, collisionmapBitmap,(enemy->cdel>>4)))enemy->cdel+=(1<<4);
    enemy->bigCol+=enemy->cdel;
    if(enemy->cdel>0)enemy->cdel=0;
    if(((enemy->bigCol+enemy->cdel)>>4)+enemy->width<stageColLimit && ((enemy->bigCol+enemy->cdel)>>4)>=stageMinColLimit)enemy->inPhase=1;
}
void enemyMoveUpLimit(ENEMY *enemy)
{
    while(!enemyCheckMoveUp(enemy, collisionmapBitmap,(enemy->rdel>>4)))enemy->rdel+=(1<<4);
    enemy->bigRow+=enemy->rdel;
    if(enemy->rdel>0)enemy->rdel=0;
}
void enemyMoveDownLimit(ENEMY *enemy)
{
    while(!enemyCheckMoveDown(enemy, collisionmapBitmap,(enemy->rdel>>4)))enemy->rdel-=(1<<4);
    enemy->bigRow+=enemy->rdel;
    if(enemy->rdel<0)enemy->rdel=0;
}
void enemyFall(ENEMY *enemy){
    if (enemyCheckMoveDown(enemy, collisionmapBitmap,1)) enemy->rdel+=3;
}
int enemyCheckCanRun(ENEMY *enemy)
{
    if (enemy->left) return (enemyCheckMoveLeft(enemy, collisionmapBitmap,-1) && (enemy->actionState==IDLE || enemy->actionState==RUN || enemy->actionState==JUMP));
    else return (enemyCheckMoveRight(enemy, collisionmapBitmap,1) && (enemy->actionState==IDLE || enemy->actionState==RUN || enemy->actionState==JUMP));
}
int enemyCheckCanAttack(ENEMY *enemy)
{
    if (enemy->left) return (enemyCheckMoveLeft(enemy, collisionmapBitmap,1) && !enemyCheckMoveDown(enemy, collisionmapBitmap,1));
    else return (enemyCheckMoveRight(enemy, collisionmapBitmap,-1) && !enemyCheckMoveDown(enemy, collisionmapBitmap,1));
}
int enemyCheckCanBlock(ENEMY *enemy)
{
    return (!enemyCheckMoveDown(enemy, collisionmapBitmap,1) && (enemy->actionState==IDLE || enemy->actionState==RUN || enemy->actionState==BLOCK));
}

int enemyCheckShouldStandStill(ENEMY *enemy)
{
    return (!((~(*(volatile unsigned int *)0x04000130) & ((1<<5))) || (~(*(volatile unsigned int *)0x04000130) & ((1<<4)))));
}
int enemyCheckShouldIdle(ENEMY *enemy)
{
    return 0;
}
int enemyAttackPlayer(ENEMY* enemy){
    if (player.actionState==JUMP) return 0;
    if (enemy->left && ((player.bigCol>>4)<(enemy->bigCol>>4)) && ((enemy->bigCol>>4)-(player.bigCol>>4)<=enemy->range+player.width-1))
    {
        if (player.actionState==BLOCK && player.left!=enemy->left) return -1;
        if (player.roninMode || player.invulTime>0) return -2;
        return 1;
    }
    else if (!enemy->left && ((player.bigCol>>4)>(enemy->bigCol>>4)) && ((player.bigCol>>4)-(enemy->bigCol>>4)-enemy->width-1<=enemy->range))
    {
        if (player.actionState==BLOCK && player.left!=enemy->left) return -1;
        if (player.roninMode || player.invulTime>0) return -2;
        return 1;
    }
    return 0;
}
void spawnNumEnemies(int num, int bigRow, int bigCol, int layer, int left)
{
    for(int i=0;i<10 && num>0;i++)
    {
        if(!(enemies[i].spawned))
        {
            spawnEnemy(&enemies[i], bigRow,bigCol+i*((48<<4)-(96<<4)*left), i, left);
            num--;
        }
    }
}
void spawnBoss(int bigRow, int bigCol, int layer)
{
    boss.bigRow = bigRow;
    boss.bigCol = bigCol;
    boss.width = 18;
    boss.height = 32;
    boss.aniCounter = 0;
    boss.actionState = EIDLE;
    boss.prevAniState = 0;
    boss.left = 1;
    boss.currFrame = 0;
    boss.layer=layer;
    boss.range=14;
    boss.maxHp=10;
    boss.bars=4;
    boss.hp=boss.maxHp;
    boss.spawned=1;
    boss.rdel=0;
    boss.cdel=0;
    boss.queueSwing=0;
    boss.aiTimer=0;
}
void spawnEnemy(ENEMY* enemy,int bigRow,int bigCol, int layer, int left)
{
    enemy->bigRow = bigRow;
    enemy->bigCol = bigCol;
    enemy->width = 18;
    enemy->height = 32;
    enemy->aniCounter = 0;
    enemy->actionState = EIDLE;
    enemy->prevAniState = 0;
    enemy->left = left;
    enemy->currFrame = 0;
    enemy->layer=layer;
    enemy->range=14;
    enemy->maxHp=10;
    enemy->hp=enemy->maxHp;
    enemy->spawned=1;
    enemy->rdel=0;
    enemy->cdel=0;
    enemy->queueSwing=0;
    enemy->aiTimer=0;
    enemy->inPhase=0;
}
int enemyCheckAhead(ENEMY* enemy)
{
    int value=1;
    int arrayPos=10;
    for(int i=0;i<10 && value!=0;i++){
        if (enemies[i].spawned && &enemies[i]!=enemy)
        {

            if ((enemy->bigCol > enemies[i].bigCol)
                    && (enemies[i].bigCol>player.bigCol)
                    && ((enemies[i].bigCol>>4) - ((player.bigCol>>4)+player.width-1))<(enemy->range*2))
            {
                value = ((enemy->bigCol>>4) - (enemies[i].bigCol>>4))>(enemy->range*4);
            }

            else if ((enemy->bigCol < enemies[i].bigCol)
                    && (enemies[i].bigCol<player.bigCol)
                    && ((player.bigCol>>4) - (enemies[i].bigCol>>4)-enemies[i].width)<(enemy->range*2))
            {
                value = ((enemies[i].bigCol>>4) - (enemy->bigCol>>4))>(enemy->range*4);
            }
        }
    }
    return value;
}
void enemyDoAI(ENEMY *enemy)
{
    enemy->aiTimer--;

    if (enemy->spawned && enemy->hp>0){

        if (enemy->aiTimer<=0){

            if (enemy->bigCol>player.bigCol)
            {

                enemy->left=1;

                if((enemy->bigCol>>4)-enemy->range+4 > ((player.bigCol>>4)+player.width-1))
                {
                    if (enemyCheckAhead(enemy))
                    {
                        enemy->actionState=ERUN;
                        enemy->cdel=-24;
                        enemy->queueSwing=0;
                    }
                    else
                    {
                        enemy->actionState=EIDLE;
                        enemy->cdel=0;
                    }
                }

                else if(!enemy->queueSwing && !enemyCheckMoveDown(enemy,collisionmapBitmap,1))
                {
                    if (enemyCheckAhead(enemy))
                    {
                        enemy->actionState=EIDLE;
                        enemy->cdel=0;
                        enemy->queueSwing=1;
                        enemy->aiTimer=5+rand()%30;
                    }
                }

                else if(enemy->queueSwing)
                {
                    enemy->actionState=EATTACK;
                    enemy->aiTimer=30;
                }
            }

            else if (enemy->bigCol<player.bigCol)
            {

                enemy->left=0;

                if(enemy->bigCol+((enemy->width-1)<<4)+((enemy->range)<<4)-4<player.bigCol)
                {
                    if (enemyCheckAhead(enemy))
                    {
                        enemy->actionState=ERUN;
                        enemy->cdel=24;
                        enemy->queueSwing=0;
                    }
                    else
                    {
                        enemy->actionState=EIDLE;
                        enemy->cdel=0;
                    }
                }

                else if(!enemy->queueSwing && !enemyCheckMoveDown(enemy,collisionmapBitmap,1))
                {
                    if (enemyCheckAhead(enemy))
                    {
                        enemy->actionState=EIDLE;
                        enemy->cdel=0;
                        enemy->queueSwing=1;
                        enemy->aiTimer=5+rand()%30;
                    }
                }

                else if(enemy->queueSwing)
                {
                    enemy->actionState=EATTACK;
                    enemy->aiTimer=15;
                }
            }

            else
            {
            }
        }

        if(enemy->actionState==EATTACK && enemy->currFrame==2 && enemy->aniCounter==eAttackPattern[enemy->currFrame]-3)
        {
            enemyAttack(enemy);
            enemy->queueSwing=0;
            enemy->aiTimer=20+(rand()%70);
        }
    }

    else if (enemy->spawned)
    {
        if (enemy->aiTimer<=0){
            if(enemy->actionState!=EDOWN)
            {
                enemy->actionState=EDOWN;
                enemy->dying=1;
                enemy->aiTimer=60;
            }
            else if (enemy->dying)
            {
                enemy->spawned=0;
                enemiesLeft[phase]--;
            }
        }
    }
}
void bossDoAI()
{
    boss.aiTimer--;

    if (boss.spawned && boss.hp>0){

        if (boss.aiTimer<=0){

            if (boss.bigCol>player.bigCol)
            {

                boss.left=1;

                if((boss.bigCol>>4)-boss.range+4 > ((player.bigCol>>4)+player.width-1))
                {
                    boss.actionState=ERUN;
                    boss.cdel=-32;
                    boss.queueSwing=0;
                }

                else if(!boss.queueSwing && !enemyCheckMoveDown(&boss,collisionmapBitmap,1))
                {
                    boss.actionState=EIDLE;
                    boss.cdel=0;
                    boss.queueSwing=1;
                    boss.aiTimer=5+rand()%30;
                }

                else if(boss.queueSwing)
                {
                    boss.actionState=EATTACK;
                    boss.aiTimer=30;
                }
            }

            else if (boss.bigCol<player.bigCol)
            {

                boss.left=0;

                if(boss.bigCol+((boss.width-1)<<4)+((boss.range)<<4)-4<player.bigCol)
                {
                    boss.actionState=ERUN;
                    boss.cdel=24;
                    boss.queueSwing=0;
                }

                else if(!boss.queueSwing && !enemyCheckMoveDown(&boss,collisionmapBitmap,1))
                {
                        boss.actionState=EIDLE;
                        boss.cdel=0;
                        boss.queueSwing=1;
                        boss.aiTimer=5+rand()%30;
                }

                else if(boss.queueSwing)
                {
                    boss.actionState=EATTACK;
                    boss.aiTimer=15;
                }
            }

            else
            {
            }
        }

        if(boss.actionState==EATTACK && boss.currFrame==2 && boss.aniCounter==eAttackPattern[boss.currFrame]-3)
        {
            enemyAttack(&boss);
            boss.queueSwing=0;
            boss.aiTimer=20+(rand()%70);
        }
    }

    else if (boss.spawned)
    {
        if (boss.bars>0){
            boss.hp=boss.maxHp;
            boss.bars--;
            boss.aiTimer=30;
        }
        if (boss.aiTimer<=0){
            if(boss.actionState!=EDOWN)
            {
                boss.actionState=EDOWN;
                boss.dying=1;
                boss.aiTimer=60;
            }
            else if (boss.dying)
            {
                boss.spawned=0;
                enemiesLeft[phase]--;
            }
        }
    }
}
void enemyAttack(ENEMY *enemy)
{
    if((enemyAttackPlayer(enemy)==1))
    {
        player.combo=0;
        player.hp-=enemy->inPhase;
        player.invulTime=30;
        playSoundB(enemySwordHitSound, enemySwordHitSound.length, enemySwordHitSound.frequency,0,6);
    }
    else if((enemyAttackPlayer(enemy)==-1) && (player.actionState==BLOCK))playSoundB(swordBlockSound, swordBlockSound.length, swordBlockSound.frequency,0,5);
    else if(!enemyAttackPlayer(enemy)) playSoundB(swordMissSound, swordMissSound.length, swordMissSound.frequency,0,3);
}
void enemyMove(ENEMY *enemy)
{
    if (enemy->rdel<0) enemyMoveUpLimit(enemy);
    else enemyMoveDownLimit(enemy);
    if (enemy->cdel>0) enemyMoveRightLimit(enemy);
    else if (enemy->cdel<0)enemyMoveLeftLimit(enemy);
    enemyFall(enemy);

    if (enemy->cdel>0 && !enemyCheckMoveDown(enemy,collisionmapBitmap,1) && enemy->aiTimer>0)enemy->cdel--;
    else if (enemy->cdel<0 && !enemyCheckMoveDown(enemy,collisionmapBitmap,1) && enemy->aiTimer>0)enemy->cdel++;
    if ((enemy->bigRow>>4)>256 || (enemy->bigRow>>4)<0)
    {
        (enemy->bigRow)=208<<4;
    }
    if ((enemy->bigCol>>4)>1536 || (enemy->bigCol>>4)<0)
    {
        (enemy->bigCol)=478<<4;
    }
    enemy->onScreen=((enemy->bigCol+enemy->width)>>4)>=stageMinColLimit && (enemy->bigCol>>4)<stageColLimit;
}

void enemiesDoAI()
{
    for(int i=0;i<10;i++)
    {
        if(enemies[i].spawned)
        {
            enemyDoAI(&enemies[i]);
        }
        if(boss.spawned)
        {
            bossDoAI();
        }
    }
}
void enemiesMove()
{
    for(int i=0;i<10;i++)
    {
        if(enemies[i].spawned)
        {
            enemyMove(&enemies[i]);
        }
    }
}

void animatePlayer()
{
    DMANow(3, playerSpritesPal, ((unsigned short*)(0x5000200)), 512/2);
    switch(player.actionState)
    {
        case IDLE:
        {
            if(player.aniCounter % 45 == 0)
            {
                player.aniCounter = 0;
                if (player.currFrame >= 1) player.currFrame = 0;
                else player.currFrame++;
            }
            break;
        }
        case ATTACK:
        {
            if(player.aniCounter % attackPattern[player.currFrame]== 0)
            {
                player.aniCounter = 0;
                if (player.currFrame >= 9)
                    player.actionState=IDLE;
                else if (player.currFrame == 4 && !player.queueSwing) player.currFrame = 9;
                else
                    {
                        if (!player.currFrame)player.queueSwing=0;
                        player.currFrame++;
                    }
            }
            break;
        }
        case BLOCK:
        {
            if(player.aniCounter % 2 == 0)
            {
                player.aniCounter = 0;
                if (player.currFrame < 3)player.currFrame++;
                else player.currFrame=3;
            }
            break;
        }
        case RUN:
        {
            if(player.aniCounter % 6 == 0)
            {
                player.aniCounter = 0;
                if (player.currFrame >= 5) player.currFrame = 0;
                else player.currFrame++;
            }
            break;
        }
        case JUMP:
        {
            player.aniCounter = 0;
            player.currFrame=2;
            if (player.rdel<0) player.currFrame=1;
            break;
        }
    }
    if(player.prevAniState!=player.actionState)
    {
        player.currFrame=0;
        player.aniCounter=0;
    }
    player.prevAniState=player.actionState;
    player.aniCounter++;
}
void demoAnimatePlayer()
{
    if(player.demoAirTime>0)player.demoAirTime--;
    DMANow(3, playerSpritesPal, ((unsigned short*)(0x5000200)), 512/2);
    switch(player.actionState)
    {
        case IDLE:
        {
            if(player.aniCounter % 45 == 0)
            {
                player.aniCounter = 0;
                if (player.currFrame >= 1) player.currFrame = 0;
                else player.currFrame++;
            }
            break;
        }
        case ATTACK:
        {
            if(player.aniCounter % attackPattern[player.currFrame]== 0)
            {
                player.aniCounter = 0;
                if (player.currFrame >= 9)
                    player.actionState=IDLE;
                else if (player.currFrame == 4 && !player.queueSwing) player.currFrame = 9;
                else
                    {
                        if (!player.currFrame)player.queueSwing=0;
                        player.currFrame++;
                    }
            }
            break;
        }
        case BLOCK:
        {
            if(player.aniCounter % 2 == 0)
            {
                player.aniCounter = 0;
                if (player.currFrame < 3)player.currFrame++;
                else player.currFrame=3;
            }
            break;
        }
        case RUN:
        {
            if(player.aniCounter % 6 == 0)
            {
                player.aniCounter = 0;
                if (player.currFrame >= 5) player.currFrame = 0;
                else player.currFrame++;
            }
            break;
        }
        case JUMP:
        {
            player.aniCounter = 0;
            player.currFrame=2;
            if (player.demoAirTime>=15) player.currFrame=1;
            break;
        }
    }
    if(player.prevAniState!=player.actionState)
    {
        player.currFrame=0;
        player.aniCounter=0;
    }
    player.prevAniState=player.actionState;
    player.aniCounter++;
}
void animateEnemy(ENEMY *enemy)
{
    switch(enemy->actionState)
    {
        case EIDLE:
        {
            if(enemy->aniCounter % 45 == 0)
            {
                enemy->aniCounter = 0;
                if (enemy->currFrame >= 0) enemy->currFrame = 0;
                else enemy->currFrame++;
            }
            break;
        }
        case ERUN:
        {
            if(enemy->aniCounter % 10 == 0)
            {
                enemy->aniCounter = 0;
                if (enemy->currFrame >= 3) enemy->currFrame = 0;
                else enemy->currFrame++;
            }
            break;
        }
        case EBLOCK:
        {
            if(enemy->aniCounter % 90 == 0)
            {
                enemy->aniCounter = 0;
            }
            break;
        }
        case EATTACK:
        {
            if(enemy->aniCounter % eAttackPattern[enemy->currFrame]== 0)
            {
                if (enemy->currFrame == 3)enemy->actionState=EIDLE;
                enemy->aniCounter = 0;
                if (enemy->currFrame >= 2)
                    enemy->actionState=IDLE;
                else
                {
                    enemy->currFrame++;
                }
            }
            break;
        }
        case EDOWN:
        {
            if(enemy->aniCounter % 8== 0)
            {
                enemy->aniCounter = 0;
                if (enemy->currFrame < 3)
                {
                    enemy->currFrame++;
                }
            }
            break;
        }
    }
    if(enemy->prevAniState!=enemy->actionState)
    {
        enemy->currFrame=0;
        enemy->aniCounter=0;
    }
    enemy->prevAniState=enemy->actionState;
    enemy->aniCounter++;
}
void animateEnemies()
{
    for(int i=0;i<10;i++)
    {
        animateEnemy(&enemies[i]);
    }
}
void resetEnemies()
{
    for(int i=0;i<10;i++)
    {
        enemies[i].spawned=0;
        enemies[i].onScreen=0;
        enemies[i].inPhase=0;
    }
    phase=0;
    enemiesLeft[0]=4;
    enemiesLeft[1]=9;
    enemiesLeft[2]=12;
    enemiesLeft[3]=19;
    enemiesLeft[4]=1;
}

void gameDirector()
{
    if(advanceTimer>0)advanceTimer--;
    if(gameDirectorTimer>0)gameDirectorTimer--;
    if (enemiesLeft[phase]<=0)
    {
        phase++;
        stageColLimit+=256;
        gameDirectorTimer=0;
        advanceTimer=200;
    }
    switch(phase)
    {
        case 0:
        {
            if(!spawnEventNum)spawnNumEnemies(4,(128<<4),(256<<4), player.layer+1, 1);
            spawnEventNum=1;
            break;
        }
        case 1:
        {
            if (hOff>=272 && spawnEventNum==1)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(128<<4), player.layer+1, 1);
                spawnEventNum++;
            }
            else if (enemiesLeft[phase]<=5 && spawnEventNum==2)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(512<<4), player.layer+1, 1);
                spawnEventNum++;
            }
            break;
        }
        case 2:
        {
            if (hOff>=528 &&spawnEventNum==3)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(768<<4), player.layer+1, 0);
                spawnEventNum++;
            }
            else if (hOff>=528 &&spawnEventNum==4)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(128<<4), player.layer+1, 0);
                spawnEventNum++;
                gameDirectorTimer=300;
            }
            else if (!gameDirectorTimer &&spawnEventNum==5)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(128<<4), player.layer+1, 0);
                spawnEventNum++;
                gameDirectorTimer=180;
            }
            else if (!gameDirectorTimer && enemiesLeft[phase]<=6 && spawnEventNum==6)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(128<<4), player.layer+1, 0);
                spawnEventNum++;
                gameDirectorTimer=180;
            }
            break;
        }
        case 3:
        {
            if (hOff>=784 && spawnEventNum==7)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(1024<<4), player.layer+1, 0);
                spawnEventNum++;
            }
            else if (hOff>=784 && enemiesLeft[phase]<=18 && spawnEventNum==8)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(1024<<4), player.layer+1, 0);
                spawnEventNum++;
                gameDirectorTimer=300;
            }
            else if (!gameDirectorTimer && enemiesLeft[phase]<=17 &&spawnEventNum==9)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(1024<<4), player.layer+1, 0);
                spawnEventNum++;
                gameDirectorTimer=300;
            }
            else if (!gameDirectorTimer && enemiesLeft[phase]<=9 &&spawnEventNum==10)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(768<<4), player.layer+1, 1);
                spawnEventNum++;
            }
            else if (!gameDirectorTimer && enemiesLeft[phase]<=7 &&spawnEventNum==11)
            {
                spawnNumEnemies(spawnEventList[spawnEventNum],(128<<4),(1024<<4), player.layer+1, 0);
                spawnEventNum++;
            }
            else if (!gameDirectorTimer && enemiesLeft[phase]<=1 &&spawnEventNum==12)
            {
                spawnBoss((128<<4),(1024<<4), player.layer+1);
                spawnEventNum++;
            }
            break;

        }
    }
}
