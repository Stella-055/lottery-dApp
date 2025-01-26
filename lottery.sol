// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
 

 contract Lottery {

address public manager;
address payable[] public players;
address payable public winner;
 
    constructor (){
       manager=msg.sender;
    }
// function to join the game  
 function playing () public payable {
 require(msg.value==1 ether,"please pay one ether only");
   players.push(payable (msg.sender));
 }

 function getbalance () public view returns (uint) {
 require(manager==msg.sender,"you are not the manager");
 return address(this).balance;
 }
// Function to generate a random index
function getRandomNumber() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.timestamp,block.prevrandao, players.length))) % players.length;
    } 
function pickwinner () public  restricted {
 require(manager==msg.sender,"you are not the manager");
 require(players.length >= 3, "Not enough players in the lottery");
        uint r = getRandomNumber();
        uint randomIndex= r%players.length;
        winner = players[randomIndex];
// Transfer all funds to the winner
        winner.transfer(getbalance());

        // Reset the lottery
        players = new address payable[](0);
        
         }

    // Modifier to restrict access to the manager
    modifier restricted() {
        require(msg.sender == manager, "Only the manager can call this function");
        _;}
 
 }