// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

contract Board {
	Square[8][8] private squares;

	function initialize() public;
	function movePiece(uint8 from_x, uint8 from_y, uint8 to_x, uint8 to_y) returns (bool isSuccessful);
	function setPiece(Piece piece) public;
	function getPiece(uint8 x, uint8 y);
	function hasPiece(uint8 x, uint8 y) returns (bool);
}