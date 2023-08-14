// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EthReceiver{
    event Log(uint amount, uint gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}

contract SendEther {
    constructor() payable {}

    receive() external payable {}

    function sendViaTransfer(address payable _to) external payable {
        _to.transfer(123);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(123);
        require(sent, "send failed");
    }

    function sendViaCall(address payable _to) external payable {
        // (bool success, bytes memory data) = _to.call{value: 123}("");
        (bool success,) = _to.call{value: 123}("");
        require(success, "call failed");
    }
}