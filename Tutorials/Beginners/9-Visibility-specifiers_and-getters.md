<img src="/Tutorials/header-images/9-OG-Visibility-specifier-getters.png" width="630" title="Operators in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)
[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Repo Home">](https://github.com/raj-pranav/learn-solidity)
<br>


# Visibility Specifier
Visibility specifier defines the visibility (more precisely accessibility) scope for a function as well as a [state variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md). In other sense, it deals with which type of function can be called from within the same contract, or from other contracts, or can't be accessed by external contracts.

There are four type of visibility specifier is solidity,
1. External
2. Internal
3. Public
4. Private

`Exception : `Only **external** visibility specifier is not applicable for a state variable, remaining three does.

## External
A function once specified as external, can be accessed from outside the contract i.e externally and it can NOT be called internally. External fucntion consists of address and function signature, they can be passed to external function as well as returned back from the same.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

Interface Token {
  function sample_call() external returns (uint);
}
```

## Internal
A function or state variable with Internal visibilty can only accessed internally (within the same contract) as well as it can also be accesses by other contracts which are derived from the current contract. While calling these function or state variable, the contract object does not need to referenced rather they can be called directly by the function name.<br><br>
A state variable, by default, has `Internal` visibility unless it is explicitly defined as specific one (Public/Private).

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
  uint total_supply = 10000000000 ; // even without specifying the visibility is internal
  function int_call(uint _Ts) internal returns (uint) {
    return _Ts;
}
```

## Public
A function or state variable with the visibility specified as Public, can be accessed by any other functions internally as well as other external contracts. An state variable with Public visibility automatically calls a [getter function](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/9-Visibility-specifiers_and-getters.md#getter-function).

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0 ;

contract Token {
  uint public total_supply = 10000000000 ; // can be accessed internally or via msg call
  function int_call(uint _Ts) public returns (uint) {
    return _Ts;
  }
}
```

## Private
A function or state variabel with the visibility as Private, is only accessible by the same contract and it can not be accessed by any one else , not even by the derived contracts. It is purely private to the contract where it is declared.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0 ;

contract Token {
  uint private total_supply = 10000000000 ; // can be accessed internally or via msg call
  function int_call(uint _Ts) private returns (uint) {
    return _Ts;
  }
}
```
<br>

`Note: ` The visibility specifier according to premissiveness order are: `Private` -> `Internal` -> `External` -> `Public` 

<br>

# Getter Function
Solidity compiler automatically creates a getter function for every [state variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md) decalred as `Public`. A getter function helps you to read the state variable at any point of time. In Remix IDE, for every getter function a button is created automatically, as shown in the image below. Get the current value by clicking on that button.

```solidity


```
![image](https://user-images.githubusercontent.com/48473708/151355352-15bf28a1-ca2d-48c8-bc67-61b81ac15362.png)

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

