# State Variable in Solidity

**State variables** can be thought of like a class variable in Python (or other languages). These variables are directly stored on the blockchain and have a fixed [data type](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/2-Data_types_solidity.md). Since these variable(s) are stored on the blockchain, therefore it cost some `gas` which needs to be paid by the contract creator during the deployment state.

## Key Highlights of a State variable
- [x] Permanently Stored on the blockchain and cost `money` (specifically **gas**), as it requires some space on the EVM
- [x] You can change the visibility of a State variable to `public` or `internal`, bydefault it is *private*  -> public state variable can be accesses from other contracts
- [x] It can be declared as `constant` or `immutable` or `mutable` -> you will say both are same .. _confused....?_ , Let me explain
  - Both *constant* & *immutable* means a fixed value , YES you are right. Actually in solidity, you can provide a fixed value to a state variable with the help of assignment opeartor. In this case, you have assigned the value at the time of declaration itself.

* Using `constant` type state variable in solidity
```solidity
// SPDX-License-Identifier: MIT
pargma solidity >0.5.0 <=0.9.0;

contract xyz {
  uint constant myVal = 27; // state variable (myVal) has been assigned with 27
}

```
  - In case of `immutable` , the value is not assigned at the time of declaration but they are initialized using constructor. The constructor are called during the compilation stage. Let's see how to declare an immutable state variable in solidity
```solidity
// SPDX-License-Identifier: MIT
pargma solidity >0.5.0 <=0.9.0;

contract xyz {
  uint public immutable myScore; // state variable myScore is not assigned with any value
  
  constructor() public {
    myScore = 111;
  }
}

```
`Note` : The gas cost for *constant* and *immutable* state variables are always much lesser than the normal state variable because the expression assigned to it is copied all over the places where it is called and re-evaluated each time. They also have fixed size (32 bytes) reserved in the EVM, irrespective of actual size required by the state variable.

  - `mutable` is also known as regular state variable. This can be declared and initialized at the same time `or` declared and initialized using constructor `or` declared and the value can be changed using a setter function (or simply a function). Mutable state variable can be declared as follow,

```solidity
// SPDX-License-Identifier: MIT
pargma solidity >0.5.0 <=0.9.0;

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