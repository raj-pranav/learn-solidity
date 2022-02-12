<img src="/Tutorials/header-images/17-OG-Arrays-in-solidity.png" width="630" title="Arrays in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Learn Solidity - Home">](https://github.com/raj-pranav/learn-solidity)
<br>
<br>


> DRAFT


**Arrays** are collection of data of same type, which means [data type](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md) of array has to be defined in prior (at the time of declaration). Array elements can be of any type, including mapping or struct. Array are `zero-based` index, which means the first element is located at zero and so on.

# Array Type - Based on Size

Arrays are broadly classified as **Fixed size array** or **dynamic size array**. Sometimes, it is also referred as compile time fixed or dynamic array.

## Fixed size array
As the name suggest, they have a fixed size and can't grow further or even reduce below the specified size. The size is defined at the time of declaration. If values are not assigned to the array during initialization then all the elements of fixed size array are initialized to `0` otherwise thr given value are assigned to it. There is no concept of empty, null or none in solidity.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract array_sample {
    uint [5] myFixedArray ; // length is 5, all elements are initialized to zero
    uint [5] fewVal = [1,2,3];  // length is 5, fisrt 3 elements 1,2,3 and remaining two are 0
    uint [5] allAssigned = [1,2,3,4,5]; // length is 5, elements are 1,2,3,4,5
  
  // Check the content of each array
    function getElements() public view returns (uint[5] memory, uint[5] memory, uint[5] memory){
        return (myFixedArray, fewVal, allAssigned);
    }
}
```
<br>

`Note : ` You can NOT specify just **uint[] memory** as return type -> it will throw compilation error. You should always use fixed size array (example - as shown in the code above **uint[5] memory**) having same size as the actual returning variable.

<br>

## Dynamic size array
Dynamic size array does not have a fixed length. These types of array are best suited in cases where number of items are not known in prior. Arrays can grow indefinitely in length.<br>
Dynamic array without assignment has a length of `0` and in another case the the dynamic array will have same length as there are number of assigned value. Later on the number of elements can be added/removed and so will the size be adjusted accordingly.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract array_sample {
    uint[] myDynArray ; // length is 0
    uint[] someVal = [1,2,3];  // length is 3
  
  // Check the content of each array
    function getElements() public view returns (uint[] memory, uint[] memory){
        return (myDynArray, someVal);
    }
    // Check the size of each array
    function getSize() public view returns (uint , uint){
        return (myDynArray.length, someVal.length);
    }
}
```


# Array Manipulation
There are a few built in functions in solidity which helps to add, remove, update or even delete the data to/from an array. Let's look each of them with example.


## Adding an element -> push

### Push will work with Dynamic array only
Push method adds an element at the end of the array. Push can NOT work on fixed size array, it will work only with dynamic array.<br>
There are two variations of Push, which are
- array_name.push()   --> without any argument
- array_name.push(x)  --> with a argument (it accepts only one argument at a time)

Push() will insert a zero initialized value at the end of dynamic array and Push(x) will insert the passed argument at the end of dynamic array <br>

- Both push() and push(x) will increment the length of array by `1`

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract array_sample {
    uint[] DynArray ;
    uint[4] fixArray ;

    // push element to dynamic array
    function push_elem(uint i) external {
        DynArray.push();    // add zero-initialized value at the end
        DynArray.push(i);   // add value of 'i' at the end
    }
    // view the array content
    function viewArray() public view returns (uint[] memory, uint[4] memory) {
        return (DynArray,fixArray)  ;
    }
    // Fetch the size of array
    function SizeArray() public view returns (uint, uint) {
        return (DynArray.length, fixArray.length);
    }
}
```
<br>


## Removing an element -> pop
A pop method simply removes the last element of an array, thus decereasing the size of array by 1. Pop method will also work only with dynamic array. It can NOT be applied on a static (fixed size) array.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract array_sample {
    uint[] DynArray = [1,2,3,4,5];

    // Removes element from end of array
    function pop_elem() external {
        DynArray.pop();
    }

    // view the array length and its content
    function viewSize_val() public view returns (uint, uint[] memory) {
        return (DynArray.length,DynArray)  ;
    }
   
}
```

## Update/Replace
Updating/Replacing an existing element at a given index with new element

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract array_sample {
    uint[4] fixArray ;

    function add_elem(uint x) external {
        fixArray[0] = x;    // replace previous element at index 0 with x
        // remaining all three elements will still be zero
    }

    // view the array content
    function viewArray() public view returns (uint[4] memory) {
        return (fixArray)  ;
    }
    // Fetch the size of array
    function SizeArray() public view returns (uint) {
        return fixArray.length;
    }
}
```

`Note: ` You can't replace the value of a dynamic array, unless the calling function is decalred as `payable`


## Delete
The keyword `delete` can able to delete an element or even entire array (depends on how it is used). Let's see two scenarios,

- Delete one element (by index)
    - syntax > delete array_name [index] : This will delete the value of existing element and replace it with `0`. 
    - It does NOT change the length of array (so the size remains same)
- Delete entire array (by array name)
    - syntax > delete array_name : This is removes all the elements of the array completely (those elements with index will not exists now)
    - It chnages the length of array to `0` (eventually array size to `0`)


```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract array_sample {
    uint[] DynArray = [1,2,3,4,5];
    uint[] secondArr = [6,7,8,9];

    // Removes element/array using delete keyword
    function del_elem() external {
        delete DynArray[2]; // delete element at index 2, which is 3
        delete secondArr;   // deletes entire array
    }

    // view the array length and its content
    function viewSize_val() public view returns (uint[] memory, uint, uint[] memory, uint) {
        return (DynArray, DynArray.length,secondArr, secondArr.length)  ;
    }
   
}
```


## Few additional function

### Array Length
You already have seen the usecase of length method (in all above examples). It basically returns the length of an array. There is no concept of ` length() `, so always use it WITHOUT the regular bracket.

```solidity
array_name.length ; // make sure not to use length()
```

### Get element
Get element will help you to fetch a value from an index. There is no explicit function/method having name get but making use of array indexing, you can fetch/get the value. Accessing element by index will not change the element value or the size of array.

`Note: ` Make sure that index should be within the length of the array.

```solidity

// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract array_sample {
    uint[] DynArray = [1,2,3,4,5];

    // Get/fetch element from array using index
    function get_elem(uint _index) external view returns (uint) {
        return DynArray[_index]; 
    }
  
}

```

# In-memory array
A In-memory array does not lives on the blockchain rather they exists until the lifecycle of the function within which it has been decalred. It's a good idea to create a temporary array (in-memory array) to perform some intermediate calculations and then let it be destroyed.
- An In-memory array must be a fixed size array (It is NOT possible to create a dynamic array)
- It has to be created within some function

```solidity
function create_arr () external {
    // syntax
    data-type[] memory variable_name = new data-type[](size) ;
    
    // example
    uint[] memory myVar = new uint[](4) ;
```
<br>


Example : Creating an In-memory array and fill each element with a predefined value.


```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract array_sample {
    uint[] DynArray = [1,2,3,4,5];

    // Fill array with data
    function fill_elem() public pure returns (uint[] memory){
        uint[] memory myArr = new uint[](3);
        
        myArr[0] = 8;
        myArr[1] = 9;
        myArr[2] = 10;

        return myArr ;
    }

}
```


## Few more topics for advanced section

- Array as Input and/or Output
- Array Literals
- Special array
    - bytes
    - string


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
