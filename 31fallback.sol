// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Fallback {
    event Log(string func, uint gas, address sender, uint value, bytes data);

    // Fallback function must be declared as external.
    fallback() external payable {
        // send / transfer (forwards 2300 gas to this fallback function)
        // call (forwards all of the gas)
        emit Log("fallback", gasleft(), msg.sender, msg.value, msg.data);
    }

    // Receive is a variant of fallback that is triggered when msg.data is empty
    receive() external payable {
        emit Log("receive", gasleft(), msg.sender, msg.value, "");
    }

    // Helper function to check the balance of this contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}