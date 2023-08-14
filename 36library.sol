// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// 1. syntax:
//    library <libraryName> {
//        // block of code
//    }
// 2. Deploying Library Using ‘For’ Keyword
//    1) import {<library1>, <library2>} from “./library-file.sol”;
//    2) using <libraryName> for <dataType> (inside the contract)
//       dataType: the variable type for which we want to access the library 

library Math {
  function max(uint x, uint y) public pure returns (uint) {
    return x>=y ? x : y;
  } 
}

contract Test {
  function testMax(uint x, uint y) public pure returns(uint) {
    return Math.max(x, y);
  }
}

library ArrayLib{
  function findIndex(uint[] storage arr, uint x) public view returns (uint) {
    for(uint i=0; i<arr.length; i++) {
      if(arr[i] == x) return i;
    }
    revert("not found");
  }
}

contract TestArray {
  using ArrayLib for uint[];

  uint[] arr = [1,2,3,4,5,6];
  function testFind(uint x) public view returns (uint) {
    // by declaring, instead of `return ArrayLib.findIndex(arr, x);` we can do
    return arr.findIndex(x);
  }
}