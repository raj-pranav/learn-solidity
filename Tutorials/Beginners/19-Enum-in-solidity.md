<img src="/Tutorials/header-images/19-OG-enum-in-solidity.png" width="630" title="Enum in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Learn Solidity - Home">](https://github.com/raj-pranav/learn-solidity)
<br>
<br>

> DRAFT


# Why does Enum exists in solidity
Enum is a way to group together several options under one name. User can write program to select one of the options from the enum name.<br>

For example, Boolean type provide us with two option - true or false | But what if, we want more than two option - here comes the role of a enum. <br>

- Enum must have `atleast one member` at the time of declaration
- The `default value` of the enum is the `first member`
- Enums cannot have more than `256` members
- Each option is represented by subsequent unsigned integer value (start from 0)
- enum types are not part of the ABI

Now, Let's get started and learn to declare & use enum in solidity.

# Declare an Enum
enum can be declared using keyword enum followed by a name and then inside the curly bracket all options.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract PaymentData {
// syntax
    enum name_for_enum { option1, option 2 .... option 256}
    
// example
    enum paymodes {
        None,
        Cash,
        Crypto,
        Online,
        Cheque
    }
    
}
```

# Use Enum

## Set a defaultoption from the available one
You can set a defualt option from the enum by declaring a constant name and then assign the choice.

`Note :` As stated earlier, when you try to return any option, instead of the option name you will get the corresponding position (index) starting with 0. In the example below, since the default option is selected as None, therfore you would get `0` in return. For other value let say `online` - you would get 3 as output.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract PaymentData {
    enum paymodes {
        None,
        Cash,
        Crypto,
        Online,
        Cheque
    }

    paymodes constant defaultmode = paymodes.None;
    paymodes public paymode ;

}
```

## Enum as input to the function
A function can accepts the enum type as input as well, but instead of the textual name it takes position as the input, which means you can pass 0 or 1 or 2 and so on instead of None, Cash, Crypto etc..

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract PaymentData {
    enum paymodes {
        None,
        Cash,
        Crypto,
        Online,
        Cheque
    }

    paymodes constant defaultmode = paymodes.None;
    paymodes public paymode ;

    function set_mode(paymodes _mode) external {
        paymode = _mode ;
    }
}
```

## Enum as output from the function
A function can also provide you enum as output. The return value will be in numeric (uint)

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract PaymentData {
    enum paymodes {
        None,
        Cash,
        Crypto,
        Online,
        Cheque
    }

    paymodes constant defaultmode = paymodes.None;
    paymodes public paymode ;

    function set_mode(paymodes _mode) external {
        paymode = _mode ;
    }

    function get_mode() external view returns (paymodes){
        return paymode ;
    }
}
```

## Assign a custom enum to state variable
You can also choose to push a custom value to the state variable.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract PaymentData {
    enum paymodes {
        None,
        Cash,
        Crypto,
        Online,
        Cheque
    }

    paymodes constant defaultmode = paymodes.None;
    paymodes public paymode ;


    function get_specific() external {
        paymode = paymodes.Online ;
    }
}
```

# Delete enum (reset)
Delete kryword will reset the enum to its default value and the default value is the first value position (which is `0`).

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract PaymentData {
    enum paymodes {
        None,
        Cash,
        Crypto,
        Online,
        Cheque
    }

    paymodes constant defaultmode = paymodes.None;
    paymodes public paymode ;


    function reset_paymode() external {
        delete paymode ;
    }
}
```

# Enum within a struct


---

# Find all the codes written in this section
All codes are compiler ready - It can directly be compiled without any errors and deployable further

[Github Gist - Enum in Solidity]()  |-->   [`Try in Remix`](https://remix.ethereum.org/)

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
19. [Enum in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/19-Enum-in-solidity.md)
