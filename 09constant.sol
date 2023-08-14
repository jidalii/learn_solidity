// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//378 gas
contract Constants {
    address public constant MY_ADDRESS = address(1);
    uint public constant MY_UINT = 123;
}

// 2489 gas
contract Var {
    address public addr = address(1);
}