// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.1;

contract ElevenEpisode{ 

    string public id;
    string public name;
    string description;
    uint256 fundraisingoal;
    address public author;

    constructor(
        string memory _id , 
        string memory _name, 
        string memory _description, 
        uint256 _fundraisingoal
        ){
            id = _id;
            name = _name;
            description = _description;
            fundraisingoal= _fundraisingoal;
            author = payable(msg.sender);

        }

    function sendEther(address payable receiver) public payable {
        receiver.transfer(msg.value);
        
    }   
    
} 
