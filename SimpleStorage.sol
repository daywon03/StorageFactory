//SPDX-License-Identifier : MIT

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract SimpleStorage {
    
    uint32 favoNumber; // result 0
    uint32 grinta;

    struct Person {
        string name;
        uint32 favoNumber;
    }

    // Dynamic Arrays
    Person[] public listOfPeople; 
    // Mathieu -> 65 Sert a retrouver le numéro des personnes avec leur nom(name)
    mapping(string => uint32) public findNumber;

    
    // ajoute des personnes dans la liste Person[] et dans le mapping findNumber
    function AddPeople (string memory _name ,uint32 _favoNumber) public {
        listOfPeople.push( Person(_name, _favoNumber));
        findNumber[_name] = _favoNumber;
    }

    function store (uint32 _grinta) public {
        grinta = _grinta;
    }
    function watch () public view returns(uint32) {
        return grinta;
    }


}
