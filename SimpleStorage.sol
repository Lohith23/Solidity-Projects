// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {

    uint256 favoriteNumber;
    bool favoriteBool;
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    //Dynamic Array
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    //view function allows you to view stuffs
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
    
    //You can use push method to add something in your dynamic list
    //This addPerson gonna add for both array and mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

//Fixed Arrays
//people[1] public people //it can have only one person.

//Struct - are ways to define new types in solidity, they ae almost like creating new objects as well.
//Array - a way of storing a list of an object or type
//Dynamic Array - an array that can change
//Fixed Arrays - opposite of dynamic array
//in solidity, there are two ways to store 1. memory - data will only be stored during the execution of the function or the contract call
//                                         2.storage - data will persist even after function execution
//strings in solidity - they are actually an object, an array of bytes
//mappings - a dictionary like data structure with 1 value per key
//Public variable lets everyone view the stuffs inside it
//Private variable opposite to public variable
//Pure variable lets you do calculations
//timestamp for the last 3 stuffs 1:50:00
