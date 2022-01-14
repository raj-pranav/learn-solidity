# Data Types in Solidity

## Value Type - call by value

### Boolean (bool)
- [x] true
- [x] false <br>

`Note` - All letters are in small case. **true** ~~is not same as~~ **True**

### Integers (int/uint)
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

### Address (a 20 byte value) - for Ethereum
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

## Reference type - call by reference

### Arrays (indices starts with zero)
- [x] Fixed size array
  - Defined as >> arrayName[size] 
- [x] Dynamic array
  - Defined as >> arrayName[ ]

### Struct


### Mapping
