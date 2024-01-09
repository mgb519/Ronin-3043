#include "myLib.h"
#include "player.h"
#include "startBackground.h"
#include "mainBackground.h"
#include "nearBackground.h"
#include "collisionmap.h"
#include "titleSong.h"
#include "GameM1.h"
#include "GameM2.h"
#include "swordSound1.h"
#include "swordSound2.h"
#include "swordSound3.h"
#include "swordMiss.h"
#include "swordBlock.h"
#include "enemySwordHit.h"
#include "heal.h"
#include "playerSprites.h"
#include "gameStructs.h"
#include "effects.h"

extern int hOff;
extern int vOff;
int attackPattern[10]={9,2,2,2,9,2,2,2,9,6};
int eAttackPattern[10]={12,6,8};
//phase                 0   1       2               3
//spawnEventNum         0   1   2   3   4   5   6   7   8   9   10  11
int spawnEventList[12]={4,  5,  4,  4,  3,  2,  3,  3,  5,  4,  3,  3};
int spawnEventNum=0;
int gameDirectorTimer=0;
int phase=0;
int enemiesLeft[5]={4,9,12,19,1};
ENEMY enemies[10];

void initSounds()
{
    swordSound.data=swordSound1;
    swordSound.length=SWORDSOUND1LEN;
    swordSound.frequency=SWORDSOUND1FREQ;

    swordMissSound.data=swordMiss;
    swordMissSound.length=SWORDMISSLEN;
    swordMissSound.frequency=SWORDMISSFREQ;

    swordBlockSound.data=swordBlock;
    swordBlockSound.length=SWORDBLOCKLEN;
    swordBlockSound.frequency=SWORDBLOCKFREQ;

    enemySwordHitSound.data=enemySwordHit;
    enemySwordHitSound.length=ENEMYSWORDHITLEN;
    enemySwordHitSound.frequency=ENEMYSWORDHITFREQ;

    healSound.data=heal;
    healSound.length=HEALLEN;
    healSound.frequency=HEALFREQ;
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

//Check if player can move in a given direction
int playerCheckMoveRight(unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[OFFSET(
            (player.bigRow>>4),
            (player.bigCol>>4)+player.width-1+offset,1536)] &&
            collisionmapBitmap[OFFSET(
            (player.bigRow>>4)+player.height-4,
            (player.bigCol>>4)+player.width-1+offset,1536)] &&
            ((player.bigCol+player.cdel)>>4)+player.width<stageColLimit);
}
int playerCheckMoveLeft(unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[OFFSET(
            (player.bigRow>>4),
            (player.bigCol>>4)+offset,1536)] &&
            collisionmapBitmap[OFFSET(
            (player.bigRow>>4)+player.height-2,
            (player.bigCol>>4)+offset,1536)] &&
            ((player.bigCol+player.cdel)>>4)>stageMinColLimit);
}
int playerCheckMoveUp(unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[OFFSET(
            (player.bigRow>>4)+offset,
            (player.bigCol>>4),1536)] &&
            collisionmapBitmap[OFFSET(
            (player.bigRow>>4)+offset,
            (player.bigCol>>4)+player.width-1,1536)]);
}
int playerCheckMoveDown(unsigned short* collisionmapBitmap, int offset)
{
	return (    collisionmapBitmap[OFFSET(
            (player.bigRow>>4)+player.height-1+offset,
            (player.bigCol>>4),1536)] &&
            collisionmapBitmap[OFFSET(
            (player.bigRow>>4)+player.height-1+offset,
            (player.bigCol>>4)+player.width-1,1536)]);
}
int playerCheckDemoMoveDown(unsigned short* collisionmapBitmap, int offset)
{
    return (player.demoAirTime>0);
}
//Move player to furthest extent in a direction
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
                    swordSound.length=SWORDSOUND1LEN;
                    swordSound.frequency=SWORDSOUND1FREQ;
                    break;
                case 1:
         
                    swordSound.data=swordSound2;
                    swordSound.length=SWORDSOUND2LEN;
                    swordSound.frequency=SWORDSOUND2FREQ;
                    break;
                case 2:
                    swordSound.data=swordSound3;
                    swordSound.length=SWORDSOUND3LEN;
                    swordSound.frequency=SWORDSOUND3FREQ;
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
            player.combo+=hit;//add 1 hit to combo if successful attack
            player.combo*=hit;//reset to 0 if miss
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
    return (!(BUTTON_HELD(BUTTON_LEFT) || BUTTON_HELD(BUTTON_RIGHT)));
}
int playerCheckShouldIdle()
{
    return (!playerCheckMoveDown(collisionmapBitmap,1)
            && !(player.actionState==ATTACK)
            && !(BUTTON_HELD(BUTTON_B) && playerCheckCanBlock())
            && !(BUTTON_PRESSED(BUTTON_UP) && playerCheckCanJump())
            );
}
int playerCheckShouldDemoIdle()
{
    return (!playerCheckDemoMoveDown(collisionmapBitmap,1)
            && !(player.actionState==ATTACK)
            && !(BUTTON_HELD(BUTTON_B) && playerCheckCanBlock())
            && !(BUTTON_PRESSED(BUTTON_UP) && playerCheckCanJump())
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
    return (collisionmapBitmap[OFFSET(
            (enemy->bigRow>>4),
            (enemy->bigCol>>4)+enemy->width-1+offset,1536)] &&
            collisionmapBitmap[OFFSET(
            (enemy->bigRow>>4)+enemy->height-2,
            (enemy->bigCol>>4)+enemy->width-1+offset,1536)] &&
            (((enemy->bigCol+enemy->cdel)>>4)+enemy->width<stageColLimit || !enemy->inPhase));
}
int enemyCheckMoveLeft(ENEMY *enemy, unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[OFFSET(
            (enemy->bigRow>>4),
            (enemy->bigCol>>4)+offset,1536)] &&
            collisionmapBitmap[OFFSET(
            (enemy->bigRow>>4)+enemy->height-2,
            (enemy->bigCol>>4)+offset,1536)] &&
            (((enemy->bigCol+enemy->cdel)>>4) >= stageMinColLimit || !enemy->inPhase));
}
int enemyCheckMoveUp(ENEMY *enemy, unsigned short* collisionmapBitmap, int offset)
{
    return (collisionmapBitmap[OFFSET(
            (enemy->bigRow>>4)+offset,
            (enemy->bigCol>>4),1536)] &&
            collisionmapBitmap[OFFSET(
            (enemy->bigRow>>4)+offset,
            (enemy->bigCol>>4)+enemy->width-1,1536)]);
}
int enemyCheckMoveDown(ENEMY *enemy, unsigned short* collisionmapBitmap, int offset)
{
    return (    collisionmapBitmap[OFFSET(
            (enemy->bigRow>>4)+enemy->height-1+offset,
            (enemy->bigCol>>4),1536)] &&
            collisionmapBitmap[OFFSET(
            (enemy->bigRow>>4)+enemy->height-1+offset,
            (enemy->bigCol>>4)+enemy->width-1,1536)]);
}

//Move enemy to furthest extent in a direction
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
    return (!(BUTTON_HELD(BUTTON_LEFT) || BUTTON_HELD(BUTTON_RIGHT)));
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
            //approaching from the left
            if ((enemy->bigCol > enemies[i].bigCol)
                    && (enemies[i].bigCol>player.bigCol)
                    && ((enemies[i].bigCol>>4) - ((player.bigCol>>4)+player.width-1))<(enemy->range*2))
            {
                value = ((enemy->bigCol>>4) - (enemies[i].bigCol>>4))>(enemy->range*4);
            }
            //approaching from the right
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
    // only do ai stuff if active in game world and currently alive
    if (enemy->spawned && enemy->hp>0){
        //can make decisions if aiTimer not on cooldown, this value is set whenever changing states so ai isn't instant
        if (enemy->aiTimer<=0){
            //if enemy is right of player
            if (enemy->bigCol>player.bigCol)
            {
                //face left towards player
                enemy->left=1;
                //if enemy is out of range to attack player
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
                //if in range and not preparing to attack already and standing on ground, set flag to attack
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
                //if still in range and ready to attack, initiate attack
                else if(enemy->queueSwing)
                {
                    enemy->actionState=EATTACK;
                    enemy->aiTimer=30;
                }
            }
            //if enemy is left of player
            else if (enemy->bigCol<player.bigCol)
            {
                //face right towards player
                enemy->left=0;
                //if enemy is out of range to attack player
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
                //if in range and not preparing to attack already and standing on ground, set flag to attack
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
                //if still in range and ready to attack, initiate attack
                else if(enemy->queueSwing)
                {
                    enemy->actionState=EATTACK;
                    enemy->aiTimer=15;
                }
            }
            //handle equal location here
            else
            {
            }
        }
        //complete attack if initiated
        if(enemy->actionState==EATTACK && enemy->currFrame==2 && enemy->aniCounter==eAttackPattern[enemy->currFrame]-3)
        {
            enemyAttack(enemy);
            enemy->queueSwing=0;
            enemy->aiTimer=20+(rand()%70);
        }
    }
    //if enemy is out of health, they should play their death animation
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
    // only do ai stuff if active in game world and currently alive
    if (boss.spawned && boss.hp>0){
        //can make decisions if aiTimer not on cooldown, this value is set whenever changing states so ai isn't instant
        if (boss.aiTimer<=0){
            //if enemy is right of player
            if (boss.bigCol>player.bigCol)
            {
                //face left towards player
                boss.left=1;
                //if enemy is out of range to attack player
                if((boss.bigCol>>4)-boss.range+4 > ((player.bigCol>>4)+player.width-1))
                {
                    boss.actionState=ERUN;
                    boss.cdel=-32;
                    boss.queueSwing=0;
                }
                //if in range and not preparing to attack already and standing on ground, set flag to attack
                else if(!boss.queueSwing && !enemyCheckMoveDown(&boss,collisionmapBitmap,1))
                {
                    boss.actionState=EIDLE;
                    boss.cdel=0;
                    boss.queueSwing=1;
                    boss.aiTimer=5+rand()%30;
                }
                //if still in range and ready to attack, initiate attack
                else if(boss.queueSwing)
                {
                    boss.actionState=EATTACK;
                    boss.aiTimer=30;
                }
            }
            //if enemy is left of player
            else if (boss.bigCol<player.bigCol)
            {
                //face right towards player
                boss.left=0;
                //if enemy is out of range to attack player
                if(boss.bigCol+((boss.width-1)<<4)+((boss.range)<<4)-4<player.bigCol)
                {
                    boss.actionState=ERUN;
                    boss.cdel=24;
                    boss.queueSwing=0;
                }
                //if in range and not preparing to attack already and standing on ground, set flag to attack
                else if(!boss.queueSwing && !enemyCheckMoveDown(&boss,collisionmapBitmap,1))
                {
                        boss.actionState=EIDLE;
                        boss.cdel=0;
                        boss.queueSwing=1;
                        boss.aiTimer=5+rand()%30;
                }
                //if still in range and ready to attack, initiate attack
                else if(boss.queueSwing)
                {
                    boss.actionState=EATTACK;
                    boss.aiTimer=15;
                }
            }
            //handle equal location here
            else
            {
            }
        }
        //complete attack if initiated
        if(boss.actionState==EATTACK && boss.currFrame==2 && boss.aniCounter==eAttackPattern[boss.currFrame]-3)
        {
            enemyAttack(&boss);
            boss.queueSwing=0;
            boss.aiTimer=20+(rand()%70);
        }
    }
    //if enemy is out of health, they should play their death animation
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
    //friction when landing and stunned
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
    DMANow(3, playerSpritesPal, SPRITE_PALETTE, playerSpritesPalLen/2);
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
    DMANow(3, playerSpritesPal, SPRITE_PALETTE, playerSpritesPalLen/2);
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