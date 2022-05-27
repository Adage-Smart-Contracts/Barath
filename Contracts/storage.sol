// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <0.9.0;

contract Storage {
     uint32 public FavNumber;
     person public Barath = person({name: "Barath Kanna",age: 22});

 struct person {
     string name;
     uint32 age;
 }
 
 function store(uint32 number) public {
    FavNumber = number;
 }
//  view and pure functions don't spend gas when executed
 function retrieve() public view returns(uint32) {
     return FavNumber;
 }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138 - Contract address