<img src="/Tutorials/header-images/16-OG-Storage-Memory-Calldata.png" width="630" title="Storage-Memory-Calldata in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Learn Solidity - Home">](https://github.com/raj-pranav/learn-solidity)
<br>
<br>


# Storage
Storage is the permanent location which stores data on the blockchain. It also directly indicates that all [state variables](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md) are stored in the storage. Storing data in storage (on blockchain) costs Gas (or ETH). Data on the storage is persistent (it stay there as long as blockchain exists or a [smart contract](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md) exists). A contract can neither read nor write to any other storage apart from its own.
<br>

Image shown below represents an high level architecture of `EVM` - Ethereum Virtual Machine and you can locate the **Storage** at the bottom-right side (highligthed within the square shape). It says it is a Persistent location.

<img src="/Tutorials/Beginners/images-for-docs/Ethereum-storage.png" width="520" title="Storage in Ethereum">

Data is stored contiguously one after other starting with the first state variable, which is stored in `slot 0`. Size of the state variables are determined based on their data type. Size of single storage can be upto `32 bytes`, which means if there are multiple state variable and all of them together build up to a size of 32 bytes then one storage slot is sufficient to store all of them contineously, otherwise, the overfolwing items are allocated in next storage slot. `Structs` and `array` data always stored on a new storage slot. 

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract XYZ {
  // all of these are state variable and stored on the blockchain permanently
  // storage keyword is not required before the variable name, while declaring a state variable
  uint[] x ;
  uint y = 10 ;
  string Name ;
  
}
```


# Memory
A memory is a temporary location, which allows you to load a variable temporarily and modifiy it. This does not change the original data but helps you to perform certain operations on a temporary copy of it. Memory is more costly the larger it grows.

Image shown below represents an high level architecture of `EVM` - Ethereum Virtual Machine and you can locate the **Memory** at the middle-right (present within the rectangular box). It says it is a `volatile` state.

<img src="/Tutorials/Beginners/images-for-docs/Ethereum-memory.png" width="520" title="Memory in Ethereum">

`Example - `

Let say, you have created a string in memory and it is being used by a function `temp_change`. This [function](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/10-Functions-in-solidity.md) can apply some operations (modify/update) and after function stops its execution, this memory data also gets destroyed. It stays untill the lifecycle of that function. The variable `_name` does not get stored on the blockchain and it will not exists after the function 'temp_change' has finished execution.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract XYZ {
  string public name;
  
  function per_change() external returns (string memory) {
      name = 'ETH User';
      return name;
    }
  
  function temp_change(string memory _name) external view returns (string memory){
      return _name;
  }
}
```

# Calldata
Calldata is a special data location that contains the function arguments. Calldata is similiar to memory but it can be used to pass argument to function. You can also choose `memory` for function inputs but using `calldata` can save more you gas.Calldata is a non-modifiable, non-persistent area where function arguments are stored.

## How calldata saves Gas ..
When you use calldata as data location for a function arguments, which is also passed to another function as argument, then it gets directly passed (unmodified) to another function without being copied, like a memory elements. So, instead of using memory you can choose calldata to save more on Gas.

`Note: ` Memory and Calldata are allowed in all functions types regardless of their visibility.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract XYZ {
  
  uint[] x;

  function f1 (uint[] calldata _x) external {
      x = _x ;
  }

  function f2(uint[] calldata _x) internal {
      uint p = _x[1];
  }

}
```

---

# Find all the codes written in this section
All codes are compiler ready - It can directly be compiled without any errors and deployable further

[Github Gist - Mapping in Solidity](https://gist.github.com/raj-pranav/1447bdfbf4938f1e8df7429646b41b7b)  |-->   [`Try in Remix`](https://remix.ethereum.org/)

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
