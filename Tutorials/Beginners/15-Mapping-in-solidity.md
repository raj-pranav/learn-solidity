<img src="/Tutorials/header-images/15-OG-Mapping-in-solidity.png" width="630" title="Mapping in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Learn Solidity - Home">](https://github.com/raj-pranav/learn-solidity)
<br>
<br>



# What's Mapping

Mapping in solidity can be understood as a dictionary of python, which stores a key-value pair. A key can be of a specific type (uint, address, bytes) and value can be of types such as Uint, Address, bytes, array, or mapping. <br>

There are few exception to key type which are, it can not be of type mapping, dynamic array, a contract, enum and struct.

## Declaring mapping in solidity
Here, `mapping` is keyword. Key is mapped to value using symbol `=>`, and lastly need to decide a name for this mapping `name_of_mapping`.

```solidity
// syntax
mapping (key => value) name_of_mapping ;

// example
mapping (address => uint) balances ;
```

`Note : ` The key data is not actually stored in a mapping, only its `keccak256` hash used to look up the value.


## Various possible key and value type

| Key Type      | Value Type                                             |
|---------------|--------------------------------------------------------|
| **Uint**      | _Uint_ or _Address_ or _bytes_ or _array_ or _mapping_ |
| **address**   | _Uint_ or _Address_ or _bytes_ or _array_ or _mapping_ |
| **bytes**     | _Uint_ or _Address_ or _bytes_ or _array_ or _mapping_ |
| ~~mapping~~   |                 NA                                     |
| ~~dynamic array~~   |           NA                                     |
| ~~contract~~   |                NA                                     |
| ~~enum~~      |                 NA                                     |
| ~~struct~~    |                 NA                                     |


# Mapping examples
In the example given below, there exists a mapping with a name `Eth_users` which <b>maps<b> address to <b>uint<b>. Here address can be any arbitrary ethereum address and uint for storing amount. The first function `add_amnt` takes in two parameters, an address and amount to be added and it marked as external function with no return type. This [Function](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/10-Functions-in-solidity.md) adds the given amount to the given address.<br>

The second function `fetch_amnt` deals with fetching the amount available at a particular given address. This function only requires an address and it fetches the amount and returns it back.



```solidity

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;


contract map_demo {
    
    mapping (address => uint) Eth_users;

    function add_amnt(address _myadd, uint _amnt) external {
        Eth_users[_myadd] = _amnt;
    }

    function fetch_amnt(address _myadd) public view returns (uint){
        return Eth_users[_myadd];
    }
}

```


# Key point to remember for a mapping in solidity
- Hashtable storing keys and corresponding value
- keyType can be value types such as uint, address or bytes
- valueType can be any type including another mapping or an array
- Mappings are not iterable
- Mappings do not have a length
- Mappings can be of `nested type` as well (meaning one mapping inside other)
- Mapping can only be used for state variables (a storage refernce type)


---

# Find all the codes written in this section
All codes are compiler ready - It can directly be compiled without any errors and deployable further

[Github Gist - Mapping in Solidity](https://gist.github.com/raj-pranav/8e2843bde0471857c711e261e625c28f)  |-->   [`Try in Remix`](https://remix.ethereum.org/)

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
