// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
   // +5
   // overides
   //virtual overide
   function store(uint256 _newNumber) public override {
    myFavoriteNumber = _newNumber + 5;
   }
}