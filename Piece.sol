// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Piece{
	
	enum Color{
    	WHITE, BLACK;
	}


	bool private isAlive;
	Color private pieceColor;

	constructor(){

	}

	function setAlive(bool _isAlive) public;
	function setColor(Color color) public;
	function getAlive() public returns (bool isAlive);
	function getColor() public returns (Color color);
	function isMoveValid(uint8 from_x,uint8 from_y,uint8 to_x,uint8 to_y) returns (bool);


}