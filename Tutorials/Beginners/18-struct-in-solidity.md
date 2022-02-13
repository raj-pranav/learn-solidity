<img src="/Tutorials/header-images/18-OG-struct-in-solidity.png" width="630" title="Struct in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Learn Solidity - Home">](https://github.com/raj-pranav/learn-solidity)
<br>
<br>


> DRAFT

# Purpose of Struct
Struct allows to group data of various [data type](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md) together. Struct can be very usefull to represent an entity/objects which need various parameters (or properties) of same or different data type. Here's what I mean,

To represent a Company, you migth need few parameters such as name, sector, pincode, turnover etc.. You can create a struct for company which can accomodate all these different parameters, otherwise without struct each variable has to be declared individually and there is no logical group that would hold these variables together.

# Declaring a struct
A struct can be declared as follows, in solidity

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    // Syntax
    struct any_name {
        data-type var1;
        data-type var2;
    }

    //example
    struct myOrg {
        string name;
        uint num_emp;
    }
}
```

`Note : ` A struct can be decalred inside as well as outside a contract. A struct declared outside the contract can be accessed by various contract from outside and the struct declared within a contract can be accessed by same contract or the contract which inherit from it.

After declaring the struct, you can use it as state varible for the single instance as well as multiple instance (as array). Let's see both of them in the two respectibe section below.

## Single instance of a struct - as state variable

Declaring a single instance of myOrg as org.

```solidity
// within the contract
  // syntax
  struct_name public name_for_this_instance ;
  
  // example
  myOrg public org ;

```
Image for illustration purpose: single struct

![one_struct](https://user-images.githubusercontent.com/48473708/153768867-10cd14bd-66be-4e5e-9f8b-384cb52db2d5.png)


## Instance as Array of structs - as state variable

Declaring many instance of myOrg as array.

```solidity
// within the contract
  // syntax
  struct_name [] public name_for_this_instance ;
  
  // example
  myOrg[] public orgs ;

```

Image for illustration purpose: multiple struct (array of struc)
![array_struct](https://user-images.githubusercontent.com/48473708/153769017-316825fd-e2d5-4eec-a276-db2be312539e.png)


# Initializing struct elements
Elements of a struct can be initialized in three different ways, which are described below 

## Default initialize
A default initialization means initializing a struct member to its default value according to their data type. 

To your surprise, I have the struct is automatically initialized when declared as state variable, in the above code.

Look at the initialization line,
```solidity
myOrg public org ;
```
All the member of the struct `org` has been assigned with the default value
- name : ''   // empty string
- num_emp = 0 // 0

`sidenote: ` when you delete a struct, each member of the struct will be set to its default value as per their data type.



## As per element's order


## Using key-value pair


# Accessing struct element

## Replacing/Updating struct element

# Deleting struct

## Delete an element

## Delete entire struct


---

# Find all the codes written in this section
All codes are compiler ready - It can directly be compiled without any errors and deployable further

[Github Gist - Arrays Solidity]()  |-->   [`Try in Remix`](https://remix.ethereum.org/)

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
12. [Constructor in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/12-Constructor-in-solidity.md)
13. [Control structure - If-else](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/13-if-else_if-else_control_structure.md)
14. [Control structure - for-loop](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/14-for-loop-in-solidity.md)
15. [Mapping in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/15-Mapping-in-solidity.md)
16. [Storage-Memory-Calldata](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/16-strorage-memory-calldata.md)
17. [Arrays in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/17-arrays-in-solidity.md)
18. [Struct in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/18-struct-in-solidity.md)
