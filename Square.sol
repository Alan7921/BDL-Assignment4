// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

import "./Piece.sol";

contract Square{
	Piece private piece;
	function getPiece() public;
	function setPiece(Piece piece) public;
	function removePiece() public;
}