
<img src="/Tutorials/header-images/2-OG-data_type_solidity.png" width="630" title="Data Type in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)
[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Repo Home">](https://github.com/raj-pranav/learn-solidity)

# Data Types in Solidity
**Solidity** is `statically typed` language, which means data type of any/all variables has to be define during the declaration time itself. If not defined, the compiler throws an error. Based on the data type defined, the compiler reserves a memory for that variable. Data type in popularly called as `value type` in solidity. Every [state variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md) or local variable in solidity have to declared with a specific data types.

* [Boolean](https://github.com/raj-pranav/learn-solidity/edit/main/Tutorials/Beginners/2-Data_types_solidity.md#boolean-bool---contains-two-types-of-value)
* [Integer](https://github.com/raj-pranav/learn-solidity/edit/main/Tutorials/Beginners/2-Data_types_solidity.md#integers-intuint-1)
* [String](https://github.com/raj-pranav/learn-solidity/edit/main/Tutorials/Beginners/2-Data_types_solidity.md#string-1)
* [Address](https://github.com/raj-pranav/learn-solidity/edit/main/Tutorials/Beginners/2-Data_types_solidity.md#address-a-20-byte-value---for-ethereum)
* [Byte](https://github.com/raj-pranav/learn-solidity/edit/main/Tutorials/Beginners/2-Data_types_solidity.md#byte-array-static)
* [Array](https://github.com/raj-pranav/learn-solidity/edit/main/Tutorials/Beginners/2-Data_types_solidity.md#arrays-indices-starts-with-zero)
* [Struct](https://github.com/raj-pranav/learn-solidity/edit/main/Tutorials/Beginners/2-Data_types_solidity.md#struct-1)
* [Mapping](https://github.com/raj-pranav/learn-solidity/edit/main/Tutorials/Beginners/2-Data_types_solidity.md#mapping-1)

### Boolean (bool) - contains two types of value
- [x] true
- [x] false <br>

`Note` - All letters are in small case. **true** ~~is not same as~~ **True**

### Integers (int/uint)
There are two categories of integers supported in solidity.

- [x] Signed Integers : Both +ve & -ve values including 0
  - int8 : value range ( -128 to 127)
  - int16 : value range (-32768 to 32767)
  - int32 : value range (-2147483648 to 2147483647)
  - .......  > _& so on with multiple of 8 and last one is_
  - int256 (or `int`): value range (-2147483648 to 2147483647)

- [x] Unsigned Integers : Only +ve values starting with 0
  - uint8 : value range (0 to 255)
  - uint16 : value range (0 to 65535)
  - uint32 : value range (0 to 4294967295)
  - ...... > _and so on, with multiple of 8 and the last value is_
  - uint256 (or `uint`) : value range (0 to 4294967295)

#### NOTE: There is no concept of `Float` or Floating point data type in solidity till version 0.8.11
---
### String
- [x] Use to store textual information such as name, place, data etc..
- [x] string is similar to bytes but are used for for arbitrary-length string `(UTF-8)` data
- [x] Declared using single quote `' '` or double quotes `" "` 
`Note` : string does not allow  length or index access

---

### Address (a 20 byte value) - for Ethereum
There are two types of address type in solidity `address` and `address payable`
- [x] address : size - 20 byte
  - Ether cannot be sent to this address
  - Associated members: `balance`, `code`, `codehash`, `call`, `delegatecall`, `staticcall`
- [x] address payable : size - 20 byte
  - Ether can be sent on this address
  - Associated members: `transfer` and `send`

`Note` - Conversion from `address payable` to `address` is *implicit* **BUT** from `address` to `address payable` has to be explicit using `payable(<address>)` 

---

### Byte array (static)
- [x] Fixed Size byte arrays
  - bytes1 : holds one byte only
  - bytes2 : holds two bytes only
  - bytes3 : holds three bytes only
  - bytes4 : holds four bytes only
  - ..... and so on till 
  - bytes32 : holds thirty-two bytes only (this is maximum size of fixed type byte array)

Associated member: `length` - returns the length of byte array
`Note`: Bytes are used for arbitrary-length raw byte data 

---


### Arrays (indices starts with zero)
- [x] Fixed size array (size has to be decided during the declaration)
  - Defined as >> arrayName[size] 
- [x] Dynamic array (size is not required to be specified)
  - Defined as >> arrayName[ ]

---

### Struct
- [x] Struct is user defined datatype that can contain multiple data types
- [x] It can be defined inside a contract or outside a contract -> struct defined outside the contract can be shared with various other contracts

Learn in detail about [Struct in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/18-struct-in-solidity.md)

---

### Mapping
- [x] Maps a key-value pair.
- [x] Analogous to hash tables


Data type in solidity is broadly categorized in two types, based on how they are accessed
- Value Type `call by value`
- Reference type `call by reference`


## Value Type - call by value
In this category, data types are passes by value, which means, whenever an instance of the variable is called/initialized the data value gets copied to that instance.

## Reference type - call by reference
In this category, data types are passes by reference, which means, whenever an instance of the variable is called/initialized the data value get referenced to the original value; to that instance. The data is accessed using a location/index.


Learn more in detail: [Mapping in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/15-Mapping-in-solidity.md)

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

