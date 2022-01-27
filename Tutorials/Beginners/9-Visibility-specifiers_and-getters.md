<img src="/Tutorials/header-images/9-OG-Visibility-specifier-getters.png" width="630" title="Operators in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)


> DRAFT

# Visibility Specifier
Visibility specifier defines the visibility (more precisely accessibility) scope for a function as well as a [state variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md). In other sense, it deals with which type of function can be called from within the same contract, or from other contracts, or can't be accessed by external contracts.

There are four type of visibility specifier is solidity,
1. External
2. Internal
3. Public
4. Private

`Exception : `Only **external** visibility specifier is not applicable for a state variable, remaining three does.

## External
External function are normally not included in a smart contracts rather they are exclusively designed to be placed in an `Interface`. Having present in an Interface, provide the benefit of getting it called (invoked) from other contract or even called via transactions. A function once specified as external, can not be called internally (only other contract, which inherits from, can call it).

```solidity
// SPDX-License-Identifier: MIT
pargma solidity ^0.8.0;

Interface Token {
  function sample_call() external returns (uint);
}
```

## Internal
A function or state variable with Internal visibilty can only accessed internally (within the same contract) as well as it can also be accesses by other contracts which are derived from the current contract. While calling these function or state variable, the contract object does not need to referenced rather they can be called directly by the function name.<br><br>
A state variable, by default, has Internal visibility unless it is explicitly defined as specific one (Public/Private).

```solidity
// SPDX-License-Identifier: MIT
pargma solidity ^0.8.0;

Interface Token {
  uint total_supply = 10000000000 ; // even without specifying the visibility is internal
  function int_call(uint _Ts) internal returns (uint) {
    return _Ts;
}
```

## Public
A function or state variable with the visibility specified as Public, can be accessed by any other functions internally as well as other external contracts. An state variable with Public visibility automatically call a [getter function]().

```solidity
// SPDX-License-Identifier: MIT
pargma solidity ^0.8.0;

Interface Token {
  uint total_supply = 10000000000 ; // even without specifying the visibility is internal
  function int_call(uint _Ts) internal returns (uint) {
    return _Ts;
}
```

## Private

# Getter Function
Solidity compiler automatically creates a getter function for every [state variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md) decalred as `Public`. A getter function helps you to read the state variable at any point of time. In Remix IDE, for every getter function a button is created automatically, as shown in the image below. Get the current value by clicking on that button.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >0.6.0 <=0.8.0;

contract G-func {
  uint data = 20 ;              // No getter function for state variable data
  uint public vis_data = 30 ;  // Automatically getter function created for vis_data
}

```
![image](https://user-images.githubusercontent.com/48473708/151355352-15bf28a1-ca2d-48c8-bc67-61b81ac15362.png)




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
