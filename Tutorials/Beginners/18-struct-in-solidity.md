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


# Initializing/Updating single Struct

## Default initialize
A default initialization means initializing a struct member to its default value according to their data type. 

To your surprise, the struct is automatically initialized upon declaring it as state variable, in the above code.

Look at the initialization line,
```solidity
myOrg public org ;
```
All the member of the struct `org` has been assigned with the default value
- name : ''   // empty string
- num_emp = 0 // 0

`sidenote: ` when you delete a struct, each member of the struct will be set to its default value as per their data type.

## Initialize value using constructor
A constructor can also be used to initialize values of the struct member, as shown below

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg {
        string name;
        uint num_emp;
    }

    myOrg public org ;

    constructor (string memory _name, uint _num) {
        org.name = _name;
        org.num_emp = _num;
    }
}
```

Before deploying the contract, you have to pass values to the constructor and this can be done done one time only.

## Update individual element with corresponding value
After declaring a struct, you can update the value of each member by passing arguments. To set the value, I have created a function - this function will take input from user and sets the new value to respective member.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg {
        string name;
        uint num_emp;
    }
    myOrg public org ;

    function set_val(string memory _newname, uint _newEmp) external {
        org.name = _newname ;
        org.num_emp = _newEmp;
    }
}
```


## Update elements by passing value in order
You can pass the value as per the member declaration order, as shown in the code below

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg {
        string name;
        uint num_emp;
    }
    myOrg public org ;

    function set_val() external {
        org = myOrg('pqr', 300);
    }
}
```


## Using key-value pair
You can also pass the arguments in the form of a key-value pair, where key is the member name and value is any new value. It does not requires parameters to be in the same order as members are declared. This is most preffered way to initialize or update a struct member.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg {
        string name;
        uint num_emp;
    }
    myOrg public org ;

    function set_val() external {
        org = myOrg({name :'abc', num_emp:300});    // or myOrg({num_emp:300, name :'pqr'});
    }
}
```

# Initializing/Updating Array of Structs
Initialization or updation of array of structs works is pretty same way as shown in the last section (Initializing/Updating single Struct). However, ther are more features available because you can use all array methods additionally. Let's get deeper

Refer to the previous declaration of `myOrg[] public orgs ;`

## Initialize and add struct to the array

### Add member argument as per their order
You can pass member value directly in the struct name (as per the declared member order) and push to to the array. First time execution will insert a new struct a location `0` of the array, second time function execution will add new struct to location `1` and so on..

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg {
        string name;
        uint num_emp;
    }

    myOrg[] public orgs ;   // state variable

    function set_vals(string memory _org, uint _num) external {
        orgs.push(myOrg(_org, _num));
    }
}

```

### Add member argument as key-value pair
In this method , the order of parameters does not matter.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg {
        string name;
        uint num_emp;
    }

    myOrg[] public orgs ;   // state variable

    function set_vals(string memory _org, uint _num) external {
        orgs.push(myOrg({name:_org, num_emp:_num}));

        // orgs.push(myOrg({num_emp:_num, name:_org}));
    }
}
```

# Creating an In-memory struct and passing it to state variable

You can also creates an in-memory struct (pointing to the structure of struct) and pass this struct from memory to storage location. If you don't push it to the array then in-memory struct will get destroyed after the function call and will does not exists anywhere.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg {
        string name;
        uint num_emp;
    }

    myOrg[] public orgs ;   // state variable

    function set_vals() external {
        myOrg memory org_1 = myOrg('org1', 1);  // 1st way
        myOrg memory org_2 = myOrg({name:'org2', num_emp:2});    // 2nd way

        orgs.push(org_1);
        orgs.push(org_2);
    }
}

```


# Accessing struct element
You can access a specific struct of an array and all its element in the following way.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg {
        string name;
        uint num_emp;
    }

    myOrg[] public orgs ;   // state variable

    function set_vals() external {
        myOrg memory org_1 = myOrg('org1', 1);
        myOrg memory org_2 = myOrg({name:'org2', num_emp:2});
        orgs.push(org_1);
        orgs.push(org_2);
    }
    // accessing struct's member value
    function get_data(uint ind) external view returns (string memory, uint){
        myOrg memory _org = orgs[ind];
        return (_org.name, _org.num_emp);
    }

}
```

# Updating individual value of an struct
You can pick a specific struct from the array (it will load all its elements of that strcut) and then assign value individually to the element. Make sure to use `storage` location, if you want to make permanent change in the state variable otherwise keep it as `memory` just for viewing or temporary change.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg {
        string name;
        uint num_emp;
    }

    myOrg[] public orgs ;   // state variable

    function set_vals() external {
        myOrg memory org_1 = myOrg('org1', 1);
        myOrg memory org_2 = myOrg({name:'org2', num_emp:2});
        orgs.push(org_1);
        orgs.push(org_2);
    }
    // update the individual element of a struct
    function update_data(uint ind) external {
        myOrg storage _org = orgs[ind];
        _org.name = 'new_Name';
        _org.num_emp = 2000 ;
    
    }

}
```

# Delete
Delete function just resets the value of specific member or even the whole struct. It does not removes them from struct. The member will still be present after the delete operation but with it's deafult value (also described earlier).

## Delete one element of a struct
Code to demonstrate the deletion (resetting) of one of the struct member.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg{
        string name;
        uint num_emp;
    }

        myOrg[] public orgs;    // state variable

        // adding data to struct and pushing it to array
        function add_data() external {
            orgs.push(myOrg({name:'org1', num_emp : 10}));
            orgs.push(myOrg({name:'org2', num_emp : 20}));
        }

        // delete data
        function remove_data() external {
            myOrg storage org = orgs[0];
            
            // reset one element of a struct located at specific address in the array
            delete org.name;
        }

}
```

## Delete one complete struct from array
Delete operation will resets the complete struct, after the operation all the memeber of that struct will have its default value.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg{
        string name;
        uint num_emp;
    }

        myOrg[] public orgs;    // state variable

        // adding data to struct and pushing it to array
        function add_data() external {
            orgs.push(myOrg({name:'org1', num_emp : 10}));
            orgs.push(myOrg({name:'org2', num_emp : 20}));
        }

        // delete data
        function remove_data() external {
                        
            // reset one complete struct located at specific address in the array
            delete orgs[1];
        }
}
```

## Delete all of the struct from a array

Delete can also able to reset all the structs from a given array of struct. 

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract struct_sample {

    struct myOrg{
        string name;
        uint num_emp;
    }

        myOrg[] public orgs;    // state variable

        // adding data to struct and pushing it to array
        function add_data() external {
            orgs.push(myOrg({name:'org1', num_emp : 10}));
            orgs.push(myOrg({name:'org2', num_emp : 20}));
        }

        // delete data
        function remove_data() external {
                        
            // reset all of struct from the array
            delete orgs;
        }

}
```



---

# Find all the codes written in this section
All codes are compiler ready - It can directly be compiled without any errors and deployable further

[Github Gist - Struct in Solidity](https://gist.github.com/raj-pranav/d392e57530fa0d6fc3a2f55e7bf97b53)  |-->   [`Try in Remix`](https://remix.ethereum.org/)

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
