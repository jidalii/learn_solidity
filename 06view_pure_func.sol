// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ViewAndPureFunction {
    uint public num;
    function viewFunc() external view returns (uint) {
        return num;
    }
    function pureFunc() external pure returns (uint) {
        return 1;
    }
}