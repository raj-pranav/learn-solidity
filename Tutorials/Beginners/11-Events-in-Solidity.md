<img src="/Tutorials/header-images/11-OG-Events-in-solidity.png" width="630" title="Events in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Repo Home">](https://github.com/raj-pranav/learn-solidity)

>DRAFT


# What is an Event ?
Events are way to inform the external world (outside a blockchain) that something specific has happened along with the data value. The external applications (such as web-app or mobile app, or even desktop app) can subscribe to an event (or multiple events) and keep on listening them, whenever they occur. Events are the best to propagate message from blockchain to internet and `transaction log` stores the event data inside EVM. Further, the event data is not accessible from within the contracts. Transaction Logs are not part of the actual blockchain since they are not required for consensus.

These logs are associated with the address of the contract, are incorporated into the blockchain, and stay there as long as a block is accessible 

# How to create an event in solidity ?
`Event : ` are struct type, so it can have any data type.<br>
It is fairly straight forward to create event in solidity - using event keyword followed by a name (decided by user) and inside the body certain parameters, as shown in the code

```solidity
// SPDX-License-Identifier:MIT
pragma solidity >=0.6.0 <0.9.0;

contract Event_sample {

    event HighValueTx(    // creating an event
      address _from,
      address _to,
      uint amount,
      uint timeStamp  
    );

}
```

# Triggering an event (aka emit)

```solidity
// SPDX-License-Identifier:MIT
pragma solidity >=0.6.0 <0.9.0;

contract Event_sample {
    event HighValueTx(
      address _from,
      address _to,
      uint amount,
      uint timeStamp  
    );

    function DetectHighVal(uint amount, address _to) external {
        if (amount > 100*10*18) { // 100 ETH -> this is represented in wei
            emit HighValueTx(msg.sender, _to, amount, block.timestamp );  // emitting sn event
            }
    }

}
```

# Relevance of Indexed item(s) in event



---

# Learn Solidity series - for Beginners 👇
1. [What is Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/1-What_is_Solidity.md)
2. [Data Types in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md)
3. [State Variable in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md)
4. [What is Smart Contract](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md)
5. [Getting familiar with Remix IDE](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/5-Getting-familiar-with-Remix-IDE.md)
6. [ABI and Bytecode](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/6-ABI-and-Bytecode-from-solidity-compiler.md)
7. [Units and Global var](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/7-Units-and-global-variable.md)
8. [Operators in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md)
9. [Visibility Specifier & Getters](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/9-Visibility-specifiers_and-getters.md)
10. [Functions](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/10-Functions-in-solidity.md)
11. [Events in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/11-Events-in-Solidity.md)