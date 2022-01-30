<img src="/Tutorials/header-images/8-OG-Operators-in-solidity.png" width="630" title="Operators in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)
[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Repo Home">](https://github.com/raj-pranav/learn-solidity)
<br>


# Operators in Solidity
Operators in any programming language provide symbols to perform various mathematical operations.Each operator has it's symbol and it always performs a specific operation.These operands should have the same [data type](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md) otherwise, the operation on given operands would result in **error**; if data type of both the operand as not THE same. Like any other programming language, solidity also supports all the standard operators (except a few like _Floor divison_ `//`).

![image](https://user-images.githubusercontent.com/48473708/151010420-327d7739-2258-4b30-b031-f1f1b92aeb5c.png)

In general, an operator always act between two operands and output some value. As always, few exceptions are:<br>
> _logical NOT_ `~` and _bitwise NOT_ `!` , requires only one operand.

There are predominantly **Five** major categories of Opeartors, which are
- [Arithmetic Operator](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md#arithmetic-operator)
- [Logical Operator](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md#logical-operator)
- [Comparison Operator](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md#comparison-operator)
- [Bitwise Operator](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md#bit-operator-or-bitwise)
- [Assignment Operator](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md#assignment-operator)
- [Special Increment/Decrement operator](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md#special--increment--decrement-operators)
- [Ternary Operator](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md#ternary-operator---)

# Arithmetic Operator
Get all codes (compiler ready) at one place [GitHub Gist - Arithmetic Operators](https://gist.github.com/raj-pranav/000be584c93771d2fccbced55de29313)

**Applicable on `integer` type operands**<br>
Let's consider variables x,y,p,q (declared below - having different data type)
```solidity
uint x = 10;
uint y = 20;
int p  = -5;
int q  = 11;
```

## Addition: `+`
To facilitate addition of two numbers (both operands should be either uint `OR` int)
```solidity
uint sum = x + y; // sum = 30
int sum1 = p + q; // sum1 = 6
```
## Subtraction : `-`
To facilitate subtraction of two numbers (both operands should be either uint `OR` int)
```solidity
uint sub1 = x - y;  // Error during compiling, as result would be of int type (-10)
uint sub1 = y - x;  // sub1 = 10
int sub2 = p - q;   // sub2 = -16
```
## Unary Subtraction (only for signed integer) : `-`
Applicable only on signed integer type : int
```solidity
int Un = - q;  // Un = -11
```
## Multiplication: `*`
To facilitate multiplication between two numbers (both operands should be either uint `OR` int)
```solidity
uint mul_1 = x * y; // mul_1 = 200
int mul_2 = p * q;   // mul_2 = -55
```
## Divison : `/`
To facilitate divison between two numbers (both operands should be either uint `OR` int) and result is exactly as floor divison
```solidity
uint div_1 = x / y;      // div_1 = 0
int div_2  = p / q;      // div_2 = 0
uint div_3 = (x+1) / 4;  // div_3 = 2
```

## Modulo (Modulus): `%`
Modulo operation outputs the remainder (both operands should be either uint `OR` int)
```solidity
uint mod_1 = x % y;  // mod_1 = 10
int mod_2  = p % q;  // mod_2 = -5
```
## Exponential : ` ** `
This is equivalent to raise to the power (or exponent): (both operands should be either uint `OR` int)
```solidity
uint exp_1 = x ** y;  // exp_1 = 100000000000000000000
```

# Logical Operator

Get all codes (compiler ready) at one place [GitHub Gist - Logical Operators](https://gist.github.com/raj-pranav/ef6eb6ab9628b6f6731257e72531d6b8)

**Applicable on `Boolean` type operands**

Let's consider the following variable (for simplicity we have used uint type only)

```solidity
uint x = 10;
uint y = 20;

bool a = x > y ; // a is false
bool b = x < y;  // b is true
```

## Logical AND : `&&`

The result of logical AND will be true if both are true, otherwise false (even if any one of them is false)

**Logical AND Truth Table**
| Value1 | Value2 | Result |
|--------|--------|--------|
| True   | True   | True   |
| True   | False  | False  |
| False  | True   | False  |
| False  | False  | False  |

```solidity
bool test1 = a && b;        // false && true -> false
bool test2 = a && false;    // false && false -> false
bool test3 = true && b;     // true && true -> true
bool test4 = true && false; // true && false -> false
```
## Logical OR  : `||`
The result of logical OR will be true if either of them is true, otherwise false (if both are false)

**Logical OR Truth Table**
| Value1 | Value2 | Result |
|--------|--------|--------|
| True   | True   | True   |
| True   | False  | True   |
| False  | True   | True   |
| False  | False  | False  |

```solidity
bool test5 = a || b;        // false && true -> true
bool test6 = a || false;    // false && false -> false
bool test7 = true || b;     // true && true -> true
bool test8 = true ||false;  // true && false -> true
```
## Logical NOT : `!`
It changes the result to opposite: makes a true to false and vice versa

```solidity
bool test9 = !a;   // test9 will be true
bool test10 = !b;  // test10 will be false
```

# Comparison Operator
Get all codes (compiler ready) at one place [GitHub Gist - Comparison Operators](https://gist.github.com/raj-pranav/60184468833969964fae355dab9369b7)

**Applicable on `integer` type operands** and result will be `boolean` ; both operands should be of same data type, either int or uint.

Comparison operator compares the value of two integer operands and produce a boolean result (true/false). Let's declare a few variable to test all comparison operators.
```solidity

uint x = 10;
uint y = 12;

```
## Less than : `<`
Checks whether, left side operand is less than the right side operand; returns true if correct otherwise false.
```solidity
bool res = x < y;   // res = true

```
## Less than or equal to : `<=`
Checks whether, left side operand is less than or atleast equal to the right side operand; returns true if correct otherwise false.
```solidity
bool res1 = x <= y;    // res1 = true
bool s_res1 = x <= 10; // s_res1 = true
```
## Greater than : `>`
Checks whether, left side operand is greater than the right side operand; returns true if correct otherwise false.
```solidity
bool res2 = x > y;  // res2 = false

```

## Greater than or equal to: `>=`
Checks whether, left side operand is greater than or atleast equal to the right side operand; returns true if correct otherwise false.
```solidity
bool res3 = x >= y;    // res3 = false
bool s_res3 = x >= 10; // s_res3 = true
```

## Is equal to (equality) : `==`
Also known as `Double equal to` and it is completely different from `=`. It compare both operands and return true if both the same, false otherwise.<br>
`Note` : Data type of both the inetgers should be same (irrespective of the value). For example

```solidity
uint p = 10;
int q = 10;
bool p_q = p == q  // This expression will throw compilation error, as data types are different.
```

Taking our original declared variable,
```solidity
bool res4 = x == y; // res4 = false

```

## Not equal to (inequality) : `!=`
It compare both operands and return true if both the NOT equal, false otherwise
```solidity
bool res5 = x != y; // res5 = true

```

# Bit Operator (or Bitwise)
Get all codes (compiler ready) at one place [GitHub Gist - Bitwise Operators](https://gist.github.com/raj-pranav/ff36a69ba2598df5f0aa4ebee38287e0)

**Applicable on `bit represented` type operands**
In Solidity, we do not have concepts to represents bits directly, internally the compiler converts byte into bits, performs a given bitwise operation, and again shows the result in byte format. Learn more about various [Data Types](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md) supported by solidity.

For the demonstration, let's consider the following bytes variables
```solidity
bytes1 x = 0x16;    // bit representation: 00010110
bytes1 y = 0x11;    // bit representation: 00010001
```
You can refer to online tool [RapidTables](https://www.rapidtables.com/convert/number/hex-to-binary.html) to convert bytes to bit and various other format

## Bitwise AND : `&`
Bitwise '&' performs `AND` operation on each bit in order and returns a final output, which again then converted back to bytes and returned

```solidity
bytes1 byte_and = x & y;    // 00010110 & 00010001 -> 00010000 -> in byte (0x10)
```

## Bitwise OR  : `|`
Bitwise '|' performs `OR` operation on each bit in order and returns a final output, which again then converted back to bytes and returned

```solidity
bytes1 byte_or = x | y;    // 00010110 | 00010001 -> 00010111 -> in byte (0x17)
```

## Bitwise exclusive OR (XOR) : `^`
Bitwise '^' performs `XOR` (exclusive OR) operation on each bit in order and returns a final output, which again then converted back to bytes and returned. You can learn the basics of [XOR Operation](https://www.khanacademy.org/computing/computer-science/cryptography/ciphers/a/xor-bitwise-operation).
```solidity
bytes1 byte_xor = x ^ y;    // 00010110 ^ 00010001 -> 00000111 -> in byte (0x07)
```

## Bitwise NOT (negation): `~`
Bitwise '~' requires only one operand (a byte) and it just flips every bit and returns the result.

```solidity
bytes1 byte_not_x = ~x;     // ~ 00010110 -> 11101001 -> in byte (0xE9)
bytes1 byte_not_y = ~y;     // ~ 00010001 -> 11101110 -> in byte (0xEE)
```

## Shift Right : `>>`
This operation shift the bit towards right, based on the given right shifting value

```solidity
bytes1 byte_right_shift = x >> 2;   // 00010110 >> 2 -> 00000101 -> in byte (0x05)
```

## Shift Left : `<<`
This operation shift the bit towards left, based on the given left shifting value

```solidity
bytes1 byte_left_shift = x << 2;    // 00010110 << 2 -> 01011000 -> in byte (0x58)
```


# Assignment Operator
You have already seen a number of times , in this section , that we have used `=`. This is an assignment operator. It simply assigns a value from right side of this symbol, to the variable name available in the left side (value in right side gets assigned to left side variable).

## Equals Operator : `=`
```solidity
uint x = 10 ;
uint y = 2 ;
```

## Add and Equate : `+=`

```solidity
x += y ; // x = x + y

```

## Subtract and Equate : `-=`

```solidity
x -= y ; // x = x - y

```
## Multiply and Equate : `*=`

```solidity
x *= y ; // x = x * y

```

## Divide and Equate : `/=`

```solidity
x /= y ; // x = x / y

```


## Modulo and Equate : `%=`

```solidity
x %= y ; // x = x % y
```


# Special : Increment & Decrement Operators
Although, this is part of `Arithmetic Operators` as it is applied on integers and also outputs an integer, but still I am keeping it separate (just for simplicity)

```solidity
uint x = 10;
uint y = 99;
```
`Note :` Please make sure that either increment or decrement operators will not able to modifies a value, which turns into another data type, for example <br>
if uint x = 0 then `x--` will throws an error as it is trying to make x to -1 (which is no more an uint)

## Increment Operator (++)
This operator acts on a single variable and increment the value by 1
```solidity
uint inc_y = y++ ;  // inc_y will be 100
```

## Decrement Operator (--)
This operator acts on a single variable and decerement the value by 1
```solidity
uint dec_x = x-- ;  // dec_x will be 9
```

# Ternary Operator : ` ? : `
It is a `conditional operator` type. It takes three operands, conditional statement at the first place followed by a question mark `?`, then the expression when evaluated true, followed by a colon `:`, and lastly the expression when evaluated false.

> 'conditional expression' ? 'executed upon true' : 'executed upon false'

```solidity
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract Ternary_Op {

    uint x = 5 ;
    uint y = 7 ;

    function ter_op(uint a, uint b) public pure returns(bool) {
        return a >= b ? true : false ;
    }
}
```

Till now, you may not have learnt about the function. You can head over to function section to learn more.



# Learn Solidity series - for Beginners 👇
- [What is Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/1-What_is_Solidity.md)
- [Data Types in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md)
- [State Variable in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md)
- [What is Smart Contract](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md)
- [Getting familiar with Remix IDE](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/5-Getting-familiar-with-Remix-IDE.md)
- [ABI and Bytecode](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/6-ABI-and-Bytecode-from-solidity-compiler.md)
- [Units and Global var](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/7-Units-and-global-variable.md)
- [Operators in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/8-Operators-in-solidity.md)
