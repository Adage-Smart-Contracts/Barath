// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <0.9.0;

contract Storage {
     uint32 public FavNumber;
 
 function store(uint32 number) public {
    FavNumber = number;
 }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138 - Contract address