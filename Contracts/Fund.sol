// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.1;

contract Fund{

    function sendEther(address payable receiver) public payable {
        receiver.transfer(msg.value);
    }
}