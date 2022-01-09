// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

import "./AbstractGame.sol";

contract Chess is AbstractGame{

	struct Player {
        address addr;
        uint256 balance;
        string nickName;
        bool isWhite;
    }

	Board public board;
	State public gameState;

	Player private playerA; // First player
    Player private playerB; // Second player

    Turn public currentTurn;
    Turn public nextTurn;

    // record the timestamp updated last time
	uint public lastUpdatedTime; 
    // a limitation to each turn/response
    uint public timeLimit; 

    // used to decide which player takes whilte
    function commit(bytes32 commitment) public;
    // combined with commit function 
    function reveal(string calldata committed) public;
    // used to realize the move of piece from A point to B point with its x,y index
	function move(uint8 from_x, uint8 from_y, uint8 to_x, uint8 to_y) public;

    // each move would emit this event as a record in log
	event Move(address player_addr,uint8 from_x, uint8 from_y, utint8 to_x, uint8 to_y, bytes5 pieceName, bytes5 color);
}


