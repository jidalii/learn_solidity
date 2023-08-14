// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract StateAndLocalVariable {
    uint public myAge = 20;
    bool public b;
    address public addr;
    function foo() external{
        uint notStateVar = 456; // local var
        myAge = 21;
        b = true;
        addr = address(1);
    }
}