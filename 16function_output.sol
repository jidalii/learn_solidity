// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionOutput {
    function returnMany() public pure returns (uint, bool) {
        return (1, true);
    }
    function assigned() public pure returns (uint a, bool b) {
        a=1;
        b=true;
        return (a, b);
    }
    function destructingAssigned() public pure {
        (uint x, bool b) = returnMany();
        (, bool c) = returnMany();
    }
}
