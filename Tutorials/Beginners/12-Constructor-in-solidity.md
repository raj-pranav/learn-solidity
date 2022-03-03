<img src="/Tutorials/header-images/12-OG-Constructor-in-solidity.png" width="630" title="Constructor in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Learn Solidity - Home">](https://github.com/raj-pranav/learn-solidity)
<br>


# What is Constructor
A constructor is an optional function that gets executed automatically during the contract creation. The constructor function basically executes the contract initialization code. This is the place, where user want to initialize certain variable to a specific value.

Infact, constructor code runs after the [state variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md) initialization. 
If state variable is not initialized with any value inline, then it will get initialized with the default value of respective [data type](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md). The `constructor` keyword is used to create this function (but without function keyword).

` Note : `There can have only one constructor in any given contract.

```solidity
constructor
```

It is not mandatory to have the constructor in every [smart contracts](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md), but even in absence of a specific declared constructor, a default constructor with empty parameter gets executed by the compiler.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract Consttr {
  
  constructor () {}
  
}
```

# How to define constructor
A constructor can be defined, as shown in the above example. Now let's see how to define constructor for various purpose

## Constructor to initialize a state variable
A state variable can be directly initialized using the inline value assignment during the declaration itself, but it cost some gas (as it is going to be stored on the blockchain). Alternatively, we can also initialize it via a constructor

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract Consttr {
  uint p ;    // state variable 
  address owner ;
  
  constructor (uint val) {
    p = val ;
    owner = msg.sender ;  // msg.sender is a global variable
  }
  
}
```

## Use constructor of inherited contract in current contract
You can directly use the `constructor of inherited contract` in your current contract to initialize the required variable(s). You can pass the parameter (if neccessary) in the current contract to be consumed by the inherited one, OR directly pass the parameter(s) to the contructor name. Here's what I mean,

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "@OpenZeppelin/openzeppelin-contracts/token/ERC721/ERC721.sol"   

contract Consttr is ERC721 {    // <- inherits from ERC721
  uint p ;    // state variable 
  address owner ;
  
  constructor () ERC721("myNFT","eNFT") {} // directly using inherited contract's constructor
  
}

```

---

# Find all the codes written in this section
All codes are compiler ready - It can directly be compiled without any errors and deployable further

[Github Gist - constructor in Solidity](https://gist.github.com/raj-pranav/ea33caf9855a49906de0d79859045e66)  |-->   [`Try in Remix`](https://remix.ethereum.org/)


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

