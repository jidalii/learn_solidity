// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ForAndWhileLoop {
    function forloops() external pure {
        for(uint i=0; i<10; i++) {
            // code
            if(i==3) {
                continue;
            }
            if(i==5) {
                break;
            }
        }
    }
    function whileloops() external pure {
        uint i=0;
        while(i<10) {
            i++;
        }
    }
    // a convention to indicate that they're function parameters
    function sum(uint _n) external pure returns (uint) {
        uint res;
        for(uint i=1; i<=_n; i++) {
            res += i;
        }
        return res;
    }
}
