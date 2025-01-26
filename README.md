                                                 LOTTERY DAPP
Lottery Smart Contract 🎲💰
This project implements a simple decentralized lottery system on the Ethereum blockchain. It allows users to join a lottery by contributing Ether, with a winner randomly selected from the pool of participants.
The contract is designed to ensure fairness and transparency.

Features 🚀
Manager-Controlled: Only the manager can initiate the lottery and select a winner.
Fair Randomness: A random winner is selected using a pseudo-random number generator based on blockchain attributes.
Secure Transactions: All funds are securely transferred to the winner.
Dynamic Reset: The lottery automatically resets after a winner is chosen.
How It Works 🛠️
Deploy the Contract
The manager deploys the contract and becomes the administrator.

Joining the Lottery
Participants can join the lottery by sending a minimum of 0.01 ETH to the contract.

Picking a Winner
The manager calls the pickWinner() function to select a random winner. The winner is paid the entire balance of the contract.

Reset for Next Round
Once a winner is chosen, the lottery resets for a new round of participation.

Prerequisites 📋
Ethereum Wallet: Use Metamask or a similar wallet to interact with the contract.
Ethereum Testnet: Deploy and test the contract on a testnet like Goerli or Sepolia.
Solidity Compiler: Solidity ^0.8.18.

Security Considerations 🔒
Randomness Manipulation:
The random number generator uses blockchain attributes, which can be influenced by miners. For improved security, consider integrating a randomness oracle like Chainlink VRF.
Access Control:
Only the manager can call sensitive functions like pickWinner().

Future Enhancements 🌟
Integration with Chainlink VRF for secure randomness.
Front-End DApp for a user-friendly interface.
Multi-Lottery Support to allow multiple games to run simultaneously.
