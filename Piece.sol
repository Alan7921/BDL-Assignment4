// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Piece{
	// defines the color of this piece
	enum Color{WHITE, BLACK}
	// a bool variable that shows whether this piece is alive
	bool private isAlive;
	// the color of this piece
	Color private pieceColor;
	// records the name of this piece
	bytes5 pieceName;

	// the setter and getter methods for fields
	function setAlive(bool _isAlive) public;
	function setColor(Color color) public;
	function getAlive() public returns (bool isAlive);
	function getColor() public returns (Color color);
	// used to judge whether this move is valid of not
	function isMoveValid(uint8 from_x,uint8 from_y,uint8 to_x,uint8 to_y) returns (bool);
}