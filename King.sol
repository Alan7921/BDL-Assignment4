// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;
import "./Piece.sol";

contract King is Piece{
	
	bool private castlingDone = false;
	
	constructor{
		pieceName = "King";
	}

	function isCastlingDone() public returns (bool);
	function setCastlingDone(bool) public;

	//	used to judge whether this move is castling move
	function isCastlingMove(uint8 from_x,uint8 from_y,uint8 to_x,uint8 to_y) private returns (bool);

	//	override the method inherited from Piece
	function isMoveValid(uint8 from_x,uint8 from_y,uint8 to_x,uint8 to_y) override returns (bool);


}