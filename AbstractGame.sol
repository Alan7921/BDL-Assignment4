// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

// An abstract design of antagonistic, 2-players, turn based game
interface AbstractGame {
    
    enum State{
        JOIN_ONE,GUESS_FIRST,RUNNING,TIME_OUT,END
    }

    enum Turn {
        WHITE,BLACK
    }
    
    // used to initialize the game, turn the State to JOIN_ONE
    function init() public payable;
    // used for second player to join the game, turn the State to GUESS_FIRST
    function join() public payable;
    // used to quit the waitting for the first joined player
    function quit() public;
    // used to end each turn and switch between players
    function endThisRound() public;
    // used for player to give up
    function surrender() public;
    /*  used for player to claim that they are winner, if the opponent could 
        not take valid action to prove they still have solution, the player
        who claimed would win.
    */
    function claimWin() public;
    //  used for claim that time is over, the opponent player lose.
    function claimTimeOut() public;
    //  offer draw to the opposite player
    function offerDraw() public;
    //  answer whether accept the draw
    function acceptDraw(bool isAccepted) public;
    //  used to withdraw ether from the contract
    function withdraw() public;

    //  record the join of player
    event PlayerJoined(address _addr);
    //  record the quit of player
    event PlayerQuit(address _addr);
    //  record the address of surrender
    event Surrender(address surrender_addr);
    //  record the address of winner
    event Winner(address winner_address);
    //  record the draw
    event Draw(address player1_addr, address player2_addr);
    //  record the address of recipient
    event Withdrawal (address recipient);

}