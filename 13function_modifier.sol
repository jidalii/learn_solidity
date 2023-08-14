// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionModifier {
    bool public paused;
    uint public count;
    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }
    function inc() external whenNotPaused{
        count++;
    }

    function dec() external whenNotPaused{
        // require(!paused, "paused");
        count--;
    }
    modifier cap(uint _x) {
        require(_x<100,"x>=100");
        _;
    }

    function incBy(uint _x) external whenNotPaused cap(_x) {
        count+=_x;
    }
    modifier sandwich(){
        count+=10;
        _;
        count+=3;
    }
    function foo() external sandwich {
        count+=1;
    }
}