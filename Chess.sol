// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0 <0.9.0;

import "./AbstractGame.sol";

contract Chess is AbstractGame{
	Board board;

	function public move(uint8 from_x, uint8 from_y, uint8 to_x, uint8 to_y);
}