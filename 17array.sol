// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract array {
    // 1. dynamic array
    // uint[] public nums1;
    uint[] public nums1 = [1,2,3];
    // 2. fix-sized array
    // uint[3] public nums2; // length: 3
    uint[3] public nums2=[4,5,6]; // length: 3

    // array method
    function examples() external {
        nums1.push(4); // push only applies to dynamic array
        uint x = nums1[1]; // 2
        nums1[2] = 777; // 1,2,777,4
        delete nums1[1]; // 1,0,777,4
        nums1.pop(); // 1,0,777
        uint len = nums1.length; // 3

        // create array in memory
        uint[] memory a = new uint[](5); // array in memory is fix-sized
        a[1] = 123;
    }
    function returnArray() external  view returns (uint[] memory) {
        return nums1;
    }
}