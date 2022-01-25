<img src="/Tutorials/header-images/8-OG-Operators-in-solidity.png" width="630" title="Operators in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

> DRAFT

# Operators in Solidity
Operators in any programming language provide symbols to perform various mathematical operations.Each operator has it's symbol and it always performs a specific operation. Like any other programming language, solidity also supports all the standard operators (except a few like _Floor divison_ `//`).

![image](https://user-images.githubusercontent.com/48473708/151010420-327d7739-2258-4b30-b031-f1f1b92aeb5c.png)

In general, an operator always act between two operands and output some value. As always, few exceptions are:<br>
> _logical NOT_ `~` and _bitwise NOT_ `!` , requires only one operand.

There are predominantly **Five** major categories of Opeartors, which are
- Arithmetic Operator
- Logical Operator
- Comparison Operator
- Bitwise Operator
- Assignment Operator

# Arithmetic Operator
**Applicable on `integer` type operands**
Let's consider variables x,y,p,q (declared below - having different data type)
```solidity
uint x = 10;
uint y = 20;
int p  = -5;
int q  = 11;
```

## Addition: `+`
To facilitate addition of two numbers (both uint `OR` both int)
```solidity
uint sum = x + y;
int sum1 = p + q;
```
## Subtraction : `-`
To facilitate subtraction of two numbers (int/uint)
```solidity
x - y
x - z 
```
## Unary Subtraction (only for signed integer) : `-`
Applicable on only one signed integer type : int
```solidity
- (z)
```
## Multiplication: `*`
To facilitate multiplication between two numbers (int/uint)
```solidity
x * y
x * z 
```
## Division : `/`

## Modulo (Modulus): `%`

## Exponential : ` ** `

# Logical Operator
**Applicable on `Boolean` type operands**
## Logical AND : `&&`

## Logical OR  : `||`

## Logical NOT : `!`


# Comparison Operator
**Applicable on `integer` type operands**

## Less than : `<`

## Less than or equal to : `<=`

## Greater than : `>`

## Greater than or equal to: `>=`

## Is equal to (equality) : `==`

## Not equal to (inequality) : `!=`

# Bit Operator (or Bitwise)
**Applicable on `bit represented` type operands**

## Bitwise AND : `&`

## Bitwise OR  : `|`

## Bitwise exclusive OR (XOR) : `^`

## Bitwise NOT (negation): `~`

## Shift Right : `>>`

## Shift Left : `<<`

# Assignment Operator

## Equals Operator : `=`

## Increment & assign : `+=`

## Decrement & assign : `-=`



# Check for `*=` and `/=`



# Learn Solidity series - for Beginners 👇
- [What is Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/1-What_is_Solidity.md)
- [Data Types in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md)
- [State Variable in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md)
- [What is Smart Contract](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md)
- [Getting familiar with Remix IDE](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/5-Getting-familiar-with-Remix-IDE.md)
- [ABI and Bytecode](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/6-ABI-and-Bytecode-from-solidity-compiler.md)
- [Units and Global var](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/7-Units-and-global-variable.md)
- [Operators in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md)
