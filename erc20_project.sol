// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "hardhat/console.sol";

contract Mtoken is ERC20 , Ownable{
    
    constructor() ERC20("CraftToken", "CT") {
        // Mint 100 tokens to msg.sender
        // Similar to how
        // 1 dollar = 100 cents
        // 1 token = 1 * (10 ** decimals)
        //100 tokens in constructer
    }


    function mintToken(uint amount) external onlyOwner {
        uint minted = amount * 10 ** uint(decimals());
        _mint(msg.sender, minted);
        console.log("You minted %s tokens", amount);
    }

    function burnToken(uint amount) external{     
        uint burned = amount * 10 ** uint(decimals());
        _burn(msg.sender, burned);
        console.log("You burned %s tokens.", amount);    
    }

    function transferToken(address recipient, uint amount) public{
        uint transfered = amount * 10 ** uint(decimals());
        _transfer(msg.sender, recipient, transfered);
        console.log("You transfered %s CT to %s", amount, recipient);
    }

}