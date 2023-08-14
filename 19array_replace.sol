// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ArrayReplace {
    uint[] public arr;
    // [1,2,3,4,5,6] -- remove(2) --> [1,2,6,4,5,6] --> [1,2,6,4,5]
    // more gas efficient
    function remove(uint _index) external {
        require(_index<arr.length, "index out of bound");
        arr[_index] = arr[arr.length-1];
        arr.pop();
    }
}