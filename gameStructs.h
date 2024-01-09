enum { START, INSTRUCT, GAME, PAUSE, WIN, LOSE};
enum { IDLE, ATTACK, BLOCK, RUN, JUMP, HIT};
enum { DEMOIDLE, DEMOATTACK, DEMOBLOCK, DEMORUN, DEMOJUMP};
enum { EIDLE, ERUN, EBLOCK, EATTACK, EDOWN};

//Structs
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

//Prototypes
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