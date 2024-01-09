#include "game.h"
#include "myLib.h"
//----------------------------------------------------------------//
// The game.c file contains a variety of game-specific functions. //
//----------------------------------------------------------------//

//updates the player movement and player input
void updatePlayer(PLAYER *player)
{
    //update the player old row first
    player->oldRow = player->row;

    player->rdel += player->racc;

    //press either Up or A to jump
    if(BUTTON_PRESSED(BUTTON_UP) || BUTTON_PRESSED(BUTTON_A))
    {
        player->rdel = -300;
    }

    player->row += player->rdel;
}

//returnes 0 if player is still alive and 1 if the player has lost
int playerOutOfBounds(PLAYER *player)
{
    //Is the player touching the top or bottom of the screen?
    if(SHIFTDOWN(player->row)+player->size > 160 || SHIFTDOWN(player->row) < 0)
    {
        return 1;
    }

    return 0;
}

//this only checks collision with the left side of the obstacles,
// and the insides of the gap
int playerCollide(PLAYER *player, PIPEOBSTACLE *obstacle)
{
    //has the right side of the player passed the left side of the obstacle?
    int pRightPassed = ((SHIFTDOWN(player->col) + player->size) > obstacle->col);

    //has the left side of the player passed the right side of the obstacle?
    int pLeftPassed = (SHIFTDOWN(player->col) < (obstacle->col + obstacle->width));
    
    //is the top of the player below the bottom of the gap?
    int pTopBelowGapBottom = (SHIFTDOWN(player->row) > (obstacle->gapHeight + obstacle->gapSize));

    //is the top of the player above the top of the gap?
    int pTopAboveGapTop = (SHIFTDOWN(player->row) < obstacle->gapHeight);
    
    //is the bottom of the player above the top of the gap?
    int pBottomAboveGapTop = ((SHIFTDOWN(player->row) + player->size) < obstacle->gapHeight);

    //is the bottom of the player below the bottom of the gap?
    int pBottomBelowGapBottom = ((SHIFTDOWN(player->row) + player->size) > (obstacle->gapHeight + obstacle->gapSize));

    //if the right side of the player has crossed the left side of the obstacle...
    if(pRightPassed && pLeftPassed)
    {
        //if the top of the player is below the bottom of the gap
        // OR the bottom of the player is above the top of the gap
        // we KNOW the player hit the wall
        if(pTopBelowGapBottom || pBottomAboveGapTop)
        {
            return 1;
        }

        //if the player bottom is below the bottom of the gap
        // and the player top is NOT below the bottom of the gap
        if(pBottomBelowGapBottom && !pTopBelowGapBottom)
        {
            return 1;
        }

        //if the player top is above the gap top
        //and the player bottom is not above the gap top
        if(pTopAboveGapTop && !pBottomAboveGapTop)
        {
            return 1;
        }
    }
    return 0;
}