# README - ERC20 contract

I created a contract is about MINTING and BURNING tokens. People can also TRANSFER tokens to other users easily. The contract only allows the contract to create new mints. If other users try to use it, it will throw an error, thus not making new tokens

This contract imported an ERC20 for easier implementation of ERC20 functions.

ERC20 - https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol

Functions:

mintToken - Mints new token to the contract owner. Only the contract owner can make new tokens. Using other accounts will throw an error.

burnToken - Burns tokens.

transferToken - Transfer tokens to the reciepient with the desired token amount.

## Executing the Contract

1. To run this contract, you can use Remix, an online Solidity IDE. To get started, go to the Remix website: https://remix.ethereum.org/.

2. Clone the repository into the website and compile. Make sure the compiler is 8.20.

3. Once compiled, you can deploy and use the contract.

4. You can now use the contract!
   
# Author

Albert Josh B. Dizon
