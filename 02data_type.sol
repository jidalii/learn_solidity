// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256: 0 to 2**256-1
                         //        uint8
                         //        uint16
    int public i = -123; // int = int256: -2**255 to 2**255
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    // address public addr=;
    // bytes32 public b32 = 0x89;
}
