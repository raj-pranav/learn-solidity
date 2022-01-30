<img src="/Tutorials/header-images/10-OG-Functions-in-solidity.png" width="630" title="Operators in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)
[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Repo Home">](https://github.com/raj-pranav/learn-solidity)

# What is a Function ?
Function is a small set of code (_one or several lines_) collectively placed together, which performs a specific task. It accepts certains input (although _not required always_) and produce an output. Even without defining functions, you can build programs by repeating the same collection of code again and again at every required place. This is where the role of function comes into play, you need to write the code at once, and call/use them wherever required. By incorporating functions in code, you are basically adhering to the principle of `DRY` - Donot Repeat Yourself.

Function is solidity also serves the same purpose, with few additional features such as visibility and Mutability. You can learn more about [Function Visibility Specifier](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/9-Visibility-specifiers_and-getters.md).

## Function Parameters & Return variables
A function accepts certain arguments (in some case no argument) and return one or more output.<br>
During function declaration, we specify the input parameter (variable name along with their respective [data type](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md)), that will be passed as arguments.

You will also to specify the return type of a function. Return type can be a variable alongwith value or it can simply be a value itself.

`Note: ` Argument and Parameter may sounds confusing at first place but these two are different. A parameter(s) is basically used during functional declaration while an argument is passed during the fuctional call. In general, people refer the same at different places.


# State Mutability of Function
As you probaly know, Ethereum is a distributed state machine. Ethereum's state is a large database that holds all accounts and balances together with the machine state. At any given block, it has only one valid state. It links all account by hashes and is traceable back to root hash (modified Merkle Patricia Trie). The specific rules to change the state of machine, have been defined in the EVM.

Now coming back to the state mutability, there are few rules listed in the EVM that can lead to change in state, which are
- Writing/modifying a state varible
- Emitting an Event
- Creating other contracts
- Destroying an existing contracts using 'selfdestruct'
- Sending 'ETH' via calls
- Calling any fuction NOT labelled as either `pure` or `view`
- Using some low level call to EVM


## View
A function can be declared as `view`, if there is no intension to modify the state of an EVM. In other word, view function promises not to change anything (from the above list) that can cause state change. A sample solidity code incorporating a view function is,

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract sample {
    uint s;

    function f_name(uint _a) public view returns (uint) {
        return _a + block.number;
    }
}
```
`Note :` The function f_name is just using the state varible 's' but not changing it, therefore view is applicable here

## Pure
A function marked as `pure` means, it will neither change the state nor reads anything from the state. A pure fucntion is by heart very pure 🙂, it doesn't want to read/write anything but certainly retuns something (as per the code).

You already know about various rules that can change the state of EVM (at any given block). Mentioned below are some read operations
- Reading a state varible
- Accessing anything related to address - address.balance
- Accessing any member of block, tx or msg (excpet msg.sig and msg.data): Learn more about [Global variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/7-Units-and-global-variable.md#globally-accessible-variablefunctions)
- Calling any function which is not marked as _pure_
- Using certain opcodes

Shown below is an example of function labelled as 'pure' in solidity. This code checks for senior citizen based on the input age. It has nothing to do with reading or writing the state of EVM.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract sample_pure {
    function sample_p (uint _age) public pure returns (bool) {
        if (_age > 60) // to check senior citizen
            return true;
        else
            return false;
    }
}
```

# Create a function in Solidity
Creating a function in solidity might seems intimidating for the first time but, It is not so complicated though. Infact, after merely a week of practice, you will be used to it. There are few additional components to the solidity function as compared to function that exists in other high level language such as Python, JavaScript etc..

I have created the below image to provide you a pictorial representation of a complete function including the individual components. Let break it down and understand each of them.

![image](https://user-images.githubusercontent.com/48473708/151676356-db1e5a75-38f4-482f-9219-f20da21e9a97.png)

- `function ` : This is a keyword to denote that this is a function. It is fixed
- `fun_name ` : Stands for function name, you can name your function in any ways you want (except it should not start with a number, sign, space). It can start with an underscore '_'.
- `parameters`: The input value that are passed to a function
    - There can be no parameters or multiple parameters
    - Each parameter must have a data typed associated with it
    - Each parameter must be separated with comma `,`
    - General practice it is put an `_` before the parameter name (not compulsory though)
- `visibility` : The visibility of the function must be declared (It is mandatory). Learn more about [Function Visibility](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/9-Visibility-specifiers_and-getters.md)
- `mutability` : This is an optional parameter and can be decided by the developer
- `returns` : It is keyword to specifies that function is returning something. It can also be optional sometime, incase of internal function. It is `returns` and NOT return. It follows the data type of returned value (specified in bracket).
- `{` : Function opening
- `body of function ` : The body of loop can have any calculation or interpretation of data
- `}` : Function closing (EOF - end of function)


## Function can be written in a single line
```solidity
// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract Test {

    function f(uint a) private pure returns (uint) { return a + 1; }
}
```

# Find all the codes written in this Section at Gist
All codes are compiler ready - It can directly be compiled without any errors and deployable further

[Github Gist - Function in Solidity](https://gist.github.com/raj-pranav/fff69c99ff8fb1d6ae172aa86b13d077)

---

# Further topics related to function - covered in Intermediate/Advance section

- Function Modifier
- Function overloading
- Internal & External Function call
- Special Function (Receive Ether & Fallback)

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
