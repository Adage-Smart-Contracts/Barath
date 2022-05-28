// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7 <0.9.0;

contract Storage {
     uint32 FavNumber;
     Person public Barath = Person({name: "Barath Kanna",age: 22});

 struct Person {
     string name;
     uint32 age;
 }
     mapping(string => uint32) public nameToAge;
     Person[] public people;
 
 function store(uint32 number) public {
    FavNumber = number;
 }
//  view and pure functions don't spend gas when executed
 function retrieve() public view returns(uint32) {
     return FavNumber;
 }
 function addPerson(string memory _name, uint32 _age) public {
    //  Person memory newPerson = Person({_name, _age});
     people.push(Person({name: _name ,age: _age}));
     nameToAge[_name] = _age;
 }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138 - Contract address