<img src="/Tutorials/header-images/14-OG-for_loop-in-solidity.png" width="630" title="Control structure - if else in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Learn Solidity - Home">](https://github.com/raj-pranav/learn-solidity)
<br>
<br>



# What is FOR LOOP
For loop's primary objective is to iterate through each data of a given sequence, in order. That's it !

In every programming language the task of for loop is pretty much this only. For loop can iterate through sequence such as an array.

## Sample `for loop` structure in solidity

```solidity
// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract demo_for {
// ------------  syntax  ----------------
    function sample() external {
      for (initalizer ; check condition ; increment/decrement) {
          body of loop ;
      }
    }
}

// --------------- Example ----------------
    for (uint i=0 ; i<10 ; i++){
        // do something in body
    }
}
```
<br>

Learn about [function in solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/10-Functions-in-solidity.md) as well as [state variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md).<br>

## For loop in action

In this code (shown below), a state variable is created and initialized with `0`. There exist a function `update_cnt`, which executes the for loop internally and update the counter status. For the next iteration, counter will not start from zero, instead from the last value.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract demo_for {
    uint public counter = 0;
    
    function update_cnt() public {
               
        for (uint i=0 ; i<10 ; i++){
            counter+= i ;
        }
    }
    
}
```
<br>

`Note : ` You can not declare a for loop without a function or [constructor](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/12-Constructor-in-solidity.md), because these are the two ways which allows you to execute a for loop.

<br>

# If-else inside a for loop
There could be many scenarios, wherein you would like to take some measures upon reaching a condition. Without if-else, a for loop will start and executes till end without performing any other additional task. <br>

Let's take the above example, wherein you wanted to record a milestone once the counter value is above `30`. You can use use a [if condition](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/13-if-else_if-else_control_structure.md)

```solidity
// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract demo_for {
    uint public counter = 0;
    uint8 public curr_milestone;
    
    function update_cnt() public returns (uint8){
           
        for (uint i=0 ; i<10 ; i++){
            counter+= i ;
            if (counter >= 30) {
                curr_milestone = 1;
            }
        }
    }
    
}
```


# For loop with `continue`
The keyword continue is used to skip a particular iteration based upon the condition defined in `if` statement.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract demo_for {
    uint public counter = 0;
    uint8 public curr_milestone;
    
    function update_cnt() public returns (uint8){
           
        for (uint i=0 ; i<10 ; i++){
            counter+= i ;
            if (i == 1) {
                continue;   // execution corresponding to i == 1 will be skipped, `i` will move to 2
            }
        }
    }
    
}
```

# For loop with `break`
Some times you don't want a for loop to iterate through each item in the sequence till the very end, instead want to exit a for loop prematuraily (upon satisfying a condition). This can be achieved by `break`.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract demo_for {
    uint public counter = 0;
    uint8 public curr_milestone;
    
    function update_cnt() public {
           
        for (uint i=0 ; i<10 ; i++){
            counter+= i ;
            if (counter >= 50) {
                break;      // for loop breaks at counter value >= 50
            }
        }
    }
    
}
```

# Both `continue` & `break` in For loop
There are situations wherein you want to use both of them. Apply them accordingly.

```solidity
// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract demo_for {
    uint public counter = 0;
    uint8 public curr_milestone;
    
    function update_cnt() public {
           
        for (uint i=0 ; i<10 ; i++){
            counter+= i ;
            if (counter == 29) {
                continue;
            }
            if (counter >= 50) {
                break;
            }
        }
    }
```

# Other control structures in Solidity
Ther are other control structure (in loops) such as `while` and `do while` loop. You can use them in your code but it is not advisable to use these loops. Since these loops are unbounded as this can hit the gas limit, causing your transaction to fail. Every transaction have a gas limit and these loops may endup exhausting those limits.

If you are pretty sure about the execution pattern and the cost of operations, then go ahead and use it.

Example for while loop

```solidity
// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract demo_for {
    uint public counter = 0;
    
    function update_cnt() public retuns (uint8){
           
        while (counter <= 10**2) {
            return counter ;
        }
        }
    }
    
}
```



---

# Find all the codes written in this section
All codes are compiler ready - It can directly be compiled without any errors and deployable further

[Github Gist - If-else in Solidity](https://gist.github.com/raj-pranav/e06f38615b0bec4430612d6d10e869f5)  |-->   [`Try in Remix`](https://remix.ethereum.org/)

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

