// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mapping {
    mapping(address=>uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external {
        // create a key-val pair
        balances[msg.sender] = 123;
        // uint bal = balances[msg.sender];
        balances[address(1)];
        // uint bal2 = balances[address(1)]; // default val: 0

        // update value of the key
        balances[msg.sender] += 456; 

        // clear the val of the key
        delete balances[msg.sender]; // val reset to 0

        isFriend[msg.sender][address(this)] = true;
    }

}