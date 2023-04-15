// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Asset{

    string public tokenName = "CryptoPlazit";

    event ChangeName(
        address editor,
        string newName
    );

    function chageName(string memory newName) public {
        tokenName = newName;
        emit ChangeName(msg.sender,newName);
    }
}