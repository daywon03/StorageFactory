
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";


contract FactoryStorage{
    SimpleStorage[] listOfSimpleStorage;


    // This function create and add a new SimpleStorage to the listOfSimpleStorage 
    function CreateSimpleStorage() public {
        SimpleStorage _ststorage = new SimpleStorage();
        listOfSimpleStorage.push(_ststorage);

    }

    //This function use the store function of SimpleStorage to attribute a favoNumber to the  ST that we createn and choose
    function stStore(uint32 _stIndex, uint32 _stStorageNumber) public {
        listOfSimpleStorage[_stIndex].store(_stStorageNumber);
    }

    function stGet(uint256 _stIndex) public view returns (uint256){
        return listOfSimpleStorage[_stIndex].watch();
    }

    



}