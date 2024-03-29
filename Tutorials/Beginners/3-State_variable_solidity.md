<img src="/Tutorials/header-images/3-OG-state_variable_solidity.png" width="630" title="Data Type in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)
[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Repo Home">](https://github.com/raj-pranav/learn-solidity)

# State Variable in Solidity
**State variables** can be thought of like a class variable in Python (or other languages). These variables are directly stored on the blockchain and have a fixed [data type](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md). Since these variable(s) are stored on the blockchain, therefore it cost some `gas` which needs to be paid by the contract creator during the deployment state.

**Visibility** for a state variable **CAN NOT** be `external`. Learn more about [Function/variable Visibility](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/9-Visibility-specifiers_and-getters.md)

## Key Highlights of a State variable
- [x] Permanently Stored on the blockchain and cost `money` (specifically **gas**), as it requires some space on the EVM
- [x] You can change the visibility of a State variable to `public` or `internal`, bydefault it is *private*  -> public state variable can be accesses from other contracts
- [x] It can be declared as `constant` or `immutable` or `mutable` -> you will say both are same .. _confused....?_ , Let me explain
  - Both *constant* & *immutable* means a fixed value , YES you are right. Actually in solidity, you can provide a fixed value to a state variable with the help of assignment opeartor. In this case, you have assigned the value at the time of declaration itself.

* Using `constant` type state variable in solidity

```solidity
// SPDX-License-Identifier: MIT
pargma solidity >0.5.0 <=0.8.0;

contract xyz {
  uint constant myVal = 27; // state variable (myVal) has been assigned with 27
}

```
<br>

* only `constant` type variable can be declared outside the contract

```solidity
// SPDX-License-Identifier: MIT
pargma solidity >0.5.0 <=0.8.0;

uint constant x = 20;
int constant y = -10;

```
<br>

A few more examples of contant state variable type are

**Blockchain Data**

- block.timestamp
- aadress(this).balance
- block.number
- msg.value

<br>

  - In case of `immutable` , the value is not assigned at the time of declaration but they are initialized using constructor. The constructor are called during the compilation stage. Let's see how to declare an immutable state variable in solidity
```solidity
// SPDX-License-Identifier: MIT
pargma solidity >0.5.0 <=0.8.0;

contract xyz {
  uint public immutable myScore; // state variable myScore is not assigned with any value
  
  constructor() public {
    myScore = 111;
  }
}

```
`Note` : The gas cost for *constant* and *immutable* state variables are always much lesser than the normal state variable because the expression assigned to it is copied all over the places where it is called and re-evaluated each time. They also have fixed size (32 bytes) reserved in the EVM, irrespective of actual size required by the state variable.

<br>

  - `mutable` is also known as regular state variable. This can be declared and initialized at the same time `or` declared and initialized using constructor `or` declared and the value can be changed using a setter function (or simply a [function](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/10-Functions-in-solidity.md)). Mutable state variable can be declared as follow,

```solidity
// SPDX-License-Identifier: MIT
pargma solidity >0.5.0 <=0.8.0;

contract xyz {
  uint16 public myHeight = 184; // state variable 'myHeight' is declared and assigned a value
  string public myName; // state variable 'myName' is declared and will be assigned value using constructor
  uint public myPay; // state variable 'myPay' is declared and value will be assigned using function setPay
  
  constructor() {
    myName = 'ETH';
  }
  function setPay() public {
    myPay = 420000;
  }
      
}

```


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
