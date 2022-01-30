
<img src="/Tutorials/header-images/4-OG-what-is-smart-contract.png" width="630" title="Data Type in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)
[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Repo Home">](https://github.com/raj-pranav/learn-solidity)

In year 1994, Nick Szabo, coined the term <b>Smart Contract</b> or *self executing contract* that deal with exchnage of money/asset between two unknown parties. Prior to the term *Smart contract*, it used to be normally called as **code** or *computer program*. The reason for calling this special code as smart contract is,
- It runs on the blockchain (which is decentralized: powered by several node participating in a p2p network)
- Code executes financial transaction upon fulfillment of certain conditions
- Two parties, involved in the contract, does not need to know each other.

# What is a Smart Contract?
A **smart contract** is simply a program that runs on the Ethereum blockchain (can be other blockchain as well ..). It's a collection of code (its functions) and data (its state) that resides at a specific address on the Ethereum blockchain. Like a normal user's address, the Smart-Contract also have a valid & fixed address in the ecosystem, which means it can sent money (ETH : Ether) to any other contract or user as well as can receive money from other contracts as well as any user. Smart contract for Ethereum blockchain is written mostly in [Solidity Programming Language](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/1-What_is_Solidity.md)<br><br>
Smart contracts help you exchange money, property(both digital & physical), shares, or anything of value in a transparent, conflict-free way without the involvement of any other third parties. Smart contract are self executing in nature, does not require any one to take action and at the same time no can modify it; **Literally No one!** - not even the creator of that smart contract.<br><br>
The immutable nature of the smart contract has its own pros and cons. If there are any vulnerabilities in the code that will not be less than a nightmare and may incurr a loss of asset. On the pros side, if two parties agree upon the terms and conditions then they both/all have to abide by the rules and can not quit or disagree.<br><br>
You will see some examples in the [example section](/Tutorials/4-what-is-a-Smart_contract.md#example).

# Salient features of a Smart Contract 
Let's understand some of the core features of a Smart Contract (aka Self executing contracts)

- [x] Code runs on a Blockchain
- [x] Smart contract are Immutable (after deployment, as blockchain is decentralized ledger) 
- [x] Has a specific address (account address) & able to send/receive native token/currency
- [x] User can interact with the functions from outside blockchain (using ABI)
- [x] It is Permissionless: anyone can write smart contract and deploy it on blockchain
- [x] Two smart contracts can also interact with each other & exchange currency
- [x] Restriction on limit on the size of smart contract : Max 24 KB (KiloBytes)
- [x] Transaction to/from smart contracts are open, transparent and traceable  

# Example
## 1. CrowdFunding
We can create a smart contract for crowd funding, aims at collecting money from various sources. The contract can be written for such aaplication and it execute intructions in the following manner
  - There will be start and end period for this campaign
  - Any user can send money on this contract address
  - At the end of the campaign period, two things can be possible
    - If today money >= required fund : Transfer this amount to the Fundraiser's account and destroy the contract.
    - Otherwise, return the respective contribution back to each user and destroy the contract.

## 2. Vending Machine
A vending Machine's main task is to automate the product delivery kisok without any service person. It contains certain items labelled with price. You have to select the item and pay the amount - the machine will dispense the product for you straightway. The same process can also be written as a Smart Contract that allows the process the transactions based on certain guideline.

# Code Sample
This is how a smart contract written in solidity looks like.
_[source](https://ethereum.org/en/developers/docs/smart-contracts/#a-digital-vending-machine)_
#### Automated Vending Machine

```solidity
pragma solidity 0.8.7;

contract VendingMachine {

    // Declare state variables of the contract
    address public owner;
    mapping (address => uint) public cupcakeBalances;

    // When 'VendingMachine' contract is deployed:
    // 1. set the deploying address as the owner of the contract
    // 2. set the deployed smart contract's cupcake balance to 100
    constructor() {
        owner = msg.sender;
        cupcakeBalances[address(this)] = 100;
    }

    // Allow the owner to increase the smart contract's cupcake balance
    function refill(uint amount) public {
        require(msg.sender == owner, "Only the owner can refill.");
        cupcakeBalances[address(this)] += amount;
    }

    // Allow anyone to purchase cupcakes
    function purchase(uint amount) public payable {
        require(msg.value >= amount * 1 ether, "You must pay at least 1 ETH per cupcake");
        require(cupcakeBalances[address(this)] >= amount, "Not enough cupcakes in stock to complete this purchase");
        cupcakeBalances[address(this)] -= amount;
        cupcakeBalances[msg.sender] += amount;
    }
}

```

# Applications of Smart Contract
- Non Fungible Token (NFT)
- Fungible Token (Cryptocurrency)
- Decentralized Apps (Dapps)
- Decentralized Finance (DeFi)
- Decentralized Exchnages (DeX)
- Blockchain based Games
- Marketplace
- Real Estate contracts
- Supply Chain management and countless others

# Learning Resources (Beginners)
- [Official Documentation of Solidity](https://docs.soliditylang.org/en/v0.8.11/)
- [FreecodeCamp YouTube -Ft. Gragory from Dapp University](https://youtu.be/ipwxYa-F1uY)
- [Freecodecamp YouTube -Ft. Patrick Collins](https://youtu.be/M576WGiDBdQ)
- [GitHub - Pranav Raj](https://github.com/raj-pranav/learn-solidity)


# Article in Learn Solidity Series (Beginners)
- [What is Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/1-What_is_Solidity.md)
- [Data Types in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md)
- [State Variable in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md)
- [What is Smart Contract](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md)
