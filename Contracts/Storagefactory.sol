// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <0.9.0;

import "./Storage.sol";

contract StorageFactory {
     Storage public simpleStorage;
     function createStorage() public {
     simpleStorage = new Storage();
    }
}