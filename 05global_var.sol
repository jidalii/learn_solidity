// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GlobalVariables {
    // view: alike pure -> can read state and global var
    function globalVars() external view returns (address, uint, uint) {
        address sender = msg.sender;
        uint timestamp = block.timestamp;
        uint blockNum = block.number; // store current block number
        return (sender, timestamp, blockNum);
    }
}