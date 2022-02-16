<img src="/Tutorials/header-images/13-OG-If-else_if-else-in-solidity.png" width="630" title="Control structure - if else in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Learn Solidity - Home">](https://github.com/raj-pranav/learn-solidity)
<br>
<br>


# If - else if - else in solidity
If, else if, else - all together is one of the control structures available in solidity. A control structure is essentially a technique to control the execution flow of code, based on the given condition (that's why it is also referred as _conditional statement_). This structure simply evalulate condition at each stage and accordingly executes the block of code. The working principle of `if-else if-else` is similiar to any other programming language.

Sample structure of the **if - else if - else**

```solidity
if (condition) {
  body ;}
else if (another condition) {
  body ; }
else {
  body ; }
```

Let's break them all and get to know how they work in various scenarios

## If condition only
` If ` condition block is used in situations, where you are only concerned about evaluating a particular condition to true, and return some result BUT never bothered; what if that condition evaluates to false. You will only need one if statement, in such situation.

In the given example code, the [state variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md) is initialized with 10 and a [function](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/10-Functions-in-solidity.md) exists which compares the supplied value `_x` with that of `x`, if the supplied value is greater of equal to x then return true otherwise 'nothing has been defined explicity for else part.



```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract demo_if {
    uint x = 10;
    function Compare (uint _x) external view returns (bool){
        if (_x >= x) {    // only one if statement
            return true;
        }
    }
}    
    
```

`Note :` Solidity will take care of the else part, even though you have not explicitly mentioned it and it will simply return false (as seen in above example).<br>
return type `boolean` -> else will return false
return type `uint`    -> else will return 0
and so on..


## If and else condition
In the above example, the else part is not defined. We can define the else part to explicity handles a specific return value (instead solidity returns a default value). Look at the example code below to understand how it can be done.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract demo_if {
    uint x = 10;
    function Compare (uint _x) external view returns (string memory){
        if (_x >= x) {   // if section
            return 'Given value is greater or equal to x';}
        else {          // else section
            return 'Given value is less than x';
        }
    }
}    
    
```
`Notice :` that, we have changed the return [data type](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md) in this 👆 function (peviously it was `bool` , now it is `string`. Since string requires memory that's why it postfixed with the data type.


### Using Ternary operator - to implement if and else
You can also use a [Ternary Operator](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md#ternary-operator---) to implement the `if-else` conditional block in just one line. The above example 👆, implemented using ternary operator 👇.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract demo_if {
    uint x = 10;
    function Compare (uint _x) external view returns (string memory){
        return _x >= x ? 'Given value is greater or equal to x' : 'Given value is less than x' ;
        
    }
}   
```


## If, else if , and else - all three together
Now, there could be a situation where you want to extensively divide you criteria into multiple blocks and based on the evaluation you return the result. Let's look at the code below to evaluate the given number individually to  `less than` , `equal to` or `greater than`.


```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract demo_if {

    uint x;

    function CompNum (uint _x) public view returns (string memory) {
        if (_x > x) {
            return 'The number entered is bigger';
        } else if (_x < x) {
            return 'Number entered is lesser';
        } else {
            return 'Both numbers are equal';
        }
        
    }
}
```


## Multiple else if statements
There are certain scenarios, where you want to implement logic similiar to a `switch case` statement, then you need to use multiple `else if` block. The code below demonstarte the same thing, it is basically returning working weekday name from user's input number. It also takes care of weekend and out of range numbers.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract demo_if2 {

    function CompNum (uint _x) public pure returns (string memory) {
        if (_x == 1) {
            return 'Monday'; }
        else if (_x == 2) {
            return 'Tuesday';}
        else if (_x == 3) {
            return 'WednesDay';}
        else if (_x == 4) {
            return 'Thursay';}
        else if (_x == 5) {
            return 'Friday';}
        else if ((_x == 6) || (_x == 7)) {
            return 'It is a Weekend';}
        else {
            return 'Invalid Input';
        }
    }
}
```


---

# Find all the codes written in this section
All codes are compiler ready - It can directly be compiled without any errors and deployable further

[Github Gist - If-else in Solidity](https://gist.github.com/raj-pranav/440ec3f10d1e7f11fb889757e7640106)  |-->   [`Try in Remix`](https://remix.ethereum.org/)

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

