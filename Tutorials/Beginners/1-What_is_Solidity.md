<img src="/Tutorials/header-images/1-OG-what_is_solidity.png" width="630" title="Data Type in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)
[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Repo Home">](https://github.com/raj-pranav/learn-solidity)

# Welcome to Solidity Programming language
Solidity is a programming language to write code for Ethereum based blockchain applications. The code is popularly known as `smart-contract` and the application is referred as `Dapps` or *Decentralized Apps*.

# About
Solidity is `High Level`, `Statically typed`, `Object-oriented` programming language inspired from *C++, JavaScript and Python*. It's one of the recently developed programming languages,which is in it's nascent stage (as of Jan, 2022) having current version as 0.8.11. You can always check the latest version [here](https://github.com/ethereum/solidity/releases).
You can use solidity to write smart contracts (which is simply a code written in solidity) for `Ethereum` blockchain or any other compatible blockchains such as `Binance Smart Chain` (BSC), `Ethereum Classic`, `Tron`, `Avalanche`, `Polygon` and few others.

# Properties of Solidity language
- [x] Turing complete : It can theoretically complete any task that is given to it.
- [x] Object oriented : supports inheritance
- [x] Statically typed : Data type has to be assigned during the declaration
- [x] Curly-bracket language - similar to JavaScript, TypeScript etc..
- [x] Supports Native [Data types](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md) as well complex user defined data types

# Integrated Development Environment (IDE) for Solidity
- [x] Remix : Official online IDE
- [x] Brownie : Python based dev framework 
- [x] Truffle : Ethereum development framework based on JavaScript
- [x] Hardhat : Ethereum development environment with local Ethereum network

# How it works
Step 1: You write a smart contract
Step 2: Compile it
  - The compiler will generate three files
    - Contract Metadata : JSON file having info such as input, output, data types, compiler version and so on.., of the contract
    - Bytecode : Hexadecimal data with opcode, which gets deployed on the `EVM` (Ethereum Virtual Machine) -> EVM powers the Ethereum blockchain
    - ABI : Application Binary Interface, helps to interact with another contracts on the blockchain as well as from outside the blockchain.
Step 3: Deploy the Bytecode & ABI, on a Target blockchain (Real - Mainnet/Testnet or Simulated environment such as browser)
  - ABI stays in the EVM while Bytecode gets deployed at the blockchain. This ABI helps to interact with the bytecode.

# Applications
- [x] Self executing contracts - Smart contracts
- [x] NFT : Non Fungible Token
- [x] Cryptocurrency : Fungible Token
- [x] Dapps : Decentralized applications
- [x] DeFi : Decentralized finance
- [x] Tokens : To share, exchange, stake 


---

# Learn Solidity (complete) - for Beginners 👇
1. [What is Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/1-What_is_Solidity.md)
2. [Data Types in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md)
3. [Variables in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2.1-Variables_in_solidity.md)
4. [State Variable in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md)
5. [What is Smart Contract](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md)
6. [Getting familiar with Remix IDE](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/5-Getting-familiar-with-Remix-IDE.md)
7. [ABI and Bytecode](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/6-ABI-and-Bytecode-from-solidity-compiler.md)
8. [Units and Global var](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/7-Units-and-global-variable.md)
9. [Operators in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md)
10. [Visibility Specifier & Getters](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/9-Visibility-specifiers_and-getters.md)
11. [Functions](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/10-Functions-in-solidity.md)
12. [Events in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/11-Events-in-Solidity.md)
13. [Constructor in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/12-Constructor-in-solidity.md)
14. [Control structure - If-else](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/13-if-else_if-else_control_structure.md)
15. [Control structure - for-loop](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/14-for-loop-in-solidity.md)
16. [Mapping in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/15-Mapping-in-solidity.md)
17. [Storage-Memory-Calldata](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/16-strorage-memory-calldata.md)
18. [Arrays in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/17-arrays-in-solidity.md)
19. [Struct in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/18-struct-in-solidity.md)
20. [Enum in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/19-Enum-in-solidity.md)
