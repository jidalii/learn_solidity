// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ArrayShift {
    uint[] public arr;
    function example() public {
        arr = [1,2,3];
        delete arr[1]; // [1,0,3]
    }

    // [1,2,3] -- remove(1) --> [1,3,3] --> [1,3]
    // [1,2,3,4,5,6] -- remove(2) --> [1,2,4,4,5,6] --> [1,2,4,5,6]
    function remove(uint _index) public {
        require(_index<arr.length && _index>=0, "index out of bound");
        if(_index==arr.length-1) {
            arr.pop();
        } else {
            for(uint i=_index; i<arr.length-1; i++) {
                arr[i] = arr[i+1];
            }
            arr.pop();
        }
    }
    function test() public {
        arr = [1,2,3,4,5];
        remove(2);
        assert(arr[0]==1);
        assert(arr[1]==2);
        assert(arr[2]==4);
        assert(arr[3]==5);
        arr=[1];
        remove(0);
        assert(arr.length==0);
    }
}