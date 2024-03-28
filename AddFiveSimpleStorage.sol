// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";

//Héritage
contract AddFiveSimpleStorage is SimpleStorage{

    function store(uint32 _newNumber) public override {
        MyfavoNumber = _newNumber + 5;
    }

}