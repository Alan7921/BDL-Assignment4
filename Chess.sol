// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

import "./AbstractGame.sol";

contract Chess is AbstractGame{

	struct Player {
        address addr;
        uint256 balance;
        string nickName;
    }

	Board public board;
	State public gameState;

	Player private playerA; // First player
    Player private playerB; // Second player

    Turn public currentTurn;
    Turn public nextTurn;

	uint public lastUpdatedTime; // record the timestamp updated in last time
    uint public timeLimit; // a limitation to each stage

    function commit(bytes32 commitment) public;

    function reveal(string calldata committed) public;

	function move(uint8 from_x, uint8 from_y, uint8 to_x, uint8 to_y) public;

	event Move(address player_addr,uint8 from_x, uint8 from_y, utint8 to_x, uint8 to_y, bytes5 pieceName, bytes5 color);
}


