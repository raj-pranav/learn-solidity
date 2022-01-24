<img src="/Tutorials/header-images/7-OG-Units_%26_global_var.png" width="630" title="Units & global var in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)

> DRAFT
In this section, you will learn all those units (either time or money) that are used while writing code and/or sending money to other accounts.

# Native currency of Ethereum
Ethereum blockchain has a native crytocurrency called "ETHER" (aka 'ETH'). All transactions happen in `ether`. Ether is the second largest crypocurrency by market capitalization, `Bitcoin` being the number one. Miners are also rewarded using Ether. Currently, there is no hard cap on the maximum supply limit of Ether.

# Expressing currency in various units
Although Ether is the native currency for the Ethereum blockchain still, it is not the lowest denomination, which means it also also possible to send `< 1 ETH`. Let's look at various units of currency on the Ethereum blockchain. Cost of performing any operation or transaction fees is normally termed as `GAS`.

> 1 ETH = 1000000000 gwei = 1000000000000000000 wei <br>
> 1 ETH = 10<sup>9</sup> gwei = 10<sup>18</sup> wei

## WEI
The smallest subunit of ETH is known as a `Wei`, named after cryptocurrency pioneer Wei Dai, and is equal to 10<sup>-18</sup> ETH.

```
1 wei  = 0.000000000000000001 ETH 'OR' 1 ETH = 1000000000000000000 wei
```

## GWEI
Gas prices are typically denominated in Gwei, a subunit of ETH equal to 10<sup>-9</sup> ETH.

```
1 gwei  = 0.000000001 ETH   'OR'  1 ETH = 1000000000 gwei
1 gwei  = 1000000000 wei
```

## ETHER
Ether is default currency and this is the highest denomination possible on the Ethereum blockchain.<br>
` Fun Fact `: You won't get the cryptocurrency price in either `wei` or `gwei`, on any decentralized exchanges. It is always available in **Ether**. Wei and Gwei are mostly used inside the smart contract and cost associated with various [EVM opcodes](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/6-ABI-and-Bytecode-from-solidity-compiler.md#opcode-aka-opeartion-code)

```
1 ETH  = 1000000000 gwei          => 10^9 gwei
1 ETH  = 1000000000000000000 wei  => 10^18 wei
```

# Time Units
EVM supports same standard time unit like seconds, minutes, hours etc... `second` is the base time unit. Although, it looks familiar time units...

```
1 == 1 seconds
1 minutes == 60 seconds
1 hours == 60 minutes
1 days == 24 hours
1 weeks == 7 days

=> months and years are specificially not defined due to the fact that not every month has same number of days and similiarly every year also don't have same number of days.
To calculate a month or year in the program, you can use equivalent days or any other valid smaller units.
```

These suffixes, like seconds, minutes, hour etc.., can not be applied to a variable name directly. for example

```solidity
uint numOfDays;
uint totalDays = numOfDays days // Thisis not acceptable to solidity compiler

```
Instead, you can use as shown below

```solidity
uint numOfDays;
uint totalDays = numOfDays * 1 days
uint totalHours = totalDays * 24 hours;
uint totalSeconds = totalHours * 60 seconds;
```

`Note`: All time units are always expressed with ` s ` at the end (a plural form), such as second**s**, minute**s**

# Globally accessible variable/functions

## Special Global Variables

## Special Global Functions



# Learn Solidity series - for Beginners 👇
- [What is Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/1-What_is_Solidity.md)
- [Data Types in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md)
- [State Variable in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md)
- [What is Smart Contract](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md)
- [Getting familiar with Remix IDE](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/5-Getting-familiar-with-Remix-IDE.md)
- [ABI and Bytecode](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/6-ABI-and-Bytecode-from-solidity-compiler.md)
- [Units and Globally available variable](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/7-Units-and-global-variable.md)
