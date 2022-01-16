
<img src="/Tutorials/header-images/2-OG-data_type_solidity.png" width="630" title="Data Type in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

# Data Types in Solidity
**Solidity** is `statically typed` language, which means data type of any/all variables has to be define during the declaration time itself. If not defined, the compiler throws an error. Based on the data type defined, the compiler reserves a memory for that variable. Data type in popularly called as `value type` in solidity. Every [state variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/3-state_variable_solidity.md) or local variable in solidity have to declared with a specific data types.

Data type in solidity is broadly categorized in two types, based on how they are accessed
- Value Type `call by value`
- Reference type `call by reference`

## Value Type - call by value
In this category, data types are passes by value, which means, whenever an instance of the variable is called/initialized the data value gets copied to that instance.

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

### String
- [x] Use to store textual information such as name, place, data etc..
- [x] string is similar to bytes but are used for for arbitrary-length string `(UTF-8)` data
- [x] Declared using single quote `' '` or double quotes `" "` 
`Note` : string does not allow  length or index access

### Address (a 20 byte value) - for Ethereum
There are two types of address type in solidity `address` and `address payable`
- [x] address : size - 20 byte
  - Ether cannot be sent to this address
  - Associated members: `balance`, `code`, `codehash`, `call`, `delegatecall`, `staticcall`
- [x] address payable : size - 20 byte
  - Ether can be sent on this address
  - Associated members: `transfer` and `send`

`Note` - Conversion from `address payable` to `address` is *implicit* **BUT** from `address` to `address payable` has to be explicit using `payable(<address>)` 

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

## Reference type - call by reference
In this category, data types are passes by reference, which means, whenever an instance of the variable is called/initialized the data value get referenced to the original value; to that instance. The data is accessed using a location/index.

### Arrays (indices starts with zero)
- [x] Fixed size array (size has to be decided during the declaration)
  - Defined as >> arrayName[size] 
- [x] Dynamic array (size is not required to be specified)
  - Defined as >> arrayName[ ]

### Struct
- [x] Struct is user defined datatype that can contain multiple data types
- [x] It can be defined inside a contract or outside a contract -> struct defined outside the contract can be shared with various other contracts

### Mapping
- [x] Maps a key-value pair.
- [x] Analogous to hash tables



