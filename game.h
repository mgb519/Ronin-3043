typedef struct
{
    int row;
	int col;
	int size;
	int rdel;

	int racc;			//The row acceleration
	int maxRSpeed;		//the max row speed
	int stopRange;		//the 

	int oldRow;
	int oldCol;
} PLAYER;
typedef struct  
{
	int row;
	int col;
	int bigRow;
	int bigCol;

	int rdel;
	int cdel;

	int width;
	int height;
	
	int aniCounter;
	int aniState;
	int actionState;
	int prevAniState;
	int left;
    int currFrame;
    int hide;
    int queueSwing;

    int hp;
    int maxHp;
    int combo;
    int comboTimer;
    int energy;
} PLAYER;

typedef struct
{
	//Basic stuff
	int col;
	int oldCol;
	int width;

	//Pipe Obstacle-specific stuff
	int gapHeight;		//the col at which there is a gap
	int gapSize;		//how big the gap is
	int active;			//used for pooling
	int clearFlag;		//if this is 1, this obstacle needs to be cleared
} ENEMY;

//game.c prototypes
void updatePlayer(PLAYER*);
int playerOutOfBounds(PLAYER*);
int playerAttack(PLAYER*, ENEMY*);
void updateObstacle(PIPEOBSTACLE*);
void spawnObstacle(PIPEOBSTACLE*);