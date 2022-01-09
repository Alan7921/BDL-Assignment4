// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;
import "./Piece.sol";

contract Pawn is Piece{

	constructor{
		pieceName = "Pawn";
	}

	function isMoveValid(uint8 from_x,uint8 from_y,uint8 to_x,uint8 to_y) override returns (bool);
}