// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // version

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given.

   uint256 myFavoriteNumber; // 0

   // uint256[] listOfFavoriteNumbers; 

   struct person{
    uint256 favoriteNumber;
    string name;
   }
// dynamic array
   person[] public listOfPeople; // []


   function store(uint256 _favoriteNumber) public {
    myFavoriteNumber = _favoriteNumber;
   }
// view, pure
   function retrieve() public view returns(uint256){
    return myFavoriteNumber;
   }

   function addPerson(string memory _name, uint256 _favoriteNumber) public{
    listOfPeople.push(person(_favoriteNumber, _name));
   }
 
}