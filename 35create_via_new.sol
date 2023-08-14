// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Account {
    address public bank;
    address public owner;
    constructor(address _owner) payable {
        bank = msg.sender;
		owner = _owner;
    }
}

contract AccountFactory {
	Account[] accounts;

    function createAccount(address _owner) public payable{
        Account newA = new Account{value: 123}(_owner);
		accounts.push(newA);
    }

    // function createAndEndowD(uint _owner, uint amount) public payable {
    //     // Send ether along with the creation
    //     Account newA = new Account{value: amount}(_owner);
    //     newA.x();
    // }
}