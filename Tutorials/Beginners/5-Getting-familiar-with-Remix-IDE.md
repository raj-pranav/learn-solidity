<img src="/Tutorials/header-images/5-OG-Getting-familiar-with-Remix-IDE.png" width="630" title="Data Type in solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)


`FunFact`: Remix doesn't mean to mixing/modifiying a song only, It is also an IDE to write [smart contract](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md) on Ethereum (Ethereum based blockchain) :smiley:

# What is an IDE & why it exists ?
`IDE` stands for **I**ntegrated **D**evelopment **E**nvironemnt. Any IDE is basically a collection of tools to write, test, and debug a code. An IDE can be generic (supports many programming language) or it can be specific.
Even without using an IDE, you could write the code and test it _BUT_ here are few advantages that comes along with an IDE
- You get a Text editor (code editor) to write your program : Integrated in the same environment
- A debugger : to save your from nightmares of what's breaking your code
- A compiler : Inherited from OS or inbuilt sometime : to provide you the machine code

a few examples : `VS Code`, `Jupyter Lab`, `PyCharm`, `Remix`, `Anaconda` .. and many others

I hope you got an !dea of an IDE.

# Remix IDE
- Remix is a powerful open source IDE that allows you to write smart contracts in [Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md) programming langauge.
- Remix is used for smart contract development as well as acts as a playground for learning and teaching Ethereum.
- Remix IDE has modules for testing, debugging and deploying of smart contracts and much more.

Remix IDE is available both online (as a web-app in the browser) as well as offilne (standard installation for all major OS)

## Online Remix IDE
You can directly access online IDE from https://remix.ethereum.org/ , without the need to login. This Web-app version is most popular and widely used Remix IDE. In the subsequent sections, you will learn various components of online version of Remix and get started with it.

## Offline Remix IDE
Offline version (installable) of Remix IDE is also available for the use and you can always get the latest release for all major OS type from [HERE](https://github.com/ethereum/remix-desktop/releases)

# Remix UI walkaround (Online version)
This is the `default` (theme may vary based on your mode preference) web-app view for online Remix IDE.

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/Remix_UI_v2.PNG" width="640" title="Remix web-app UI">

There are three major categories of items
1. Remix Sidebar
2. Featured Plugins
3. File & Resources


## 1. Sidebar
The sidebar usually contains several icons but predominantly it has `first three` of them, which are
- `File explorer` : Browse, locate, arrange, create files and folders
- `Compile`       : To compile a smart contract & generate the necessary files
- `Deploy`        : Deploy smart contract on either a simulated or testnet , or a mainnet blockchain

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/sidebar_Remix.PNG" width="320" title="Remix sidebar">

Remaining icons that you see in the above image are manually installed using the [featured plugin](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/5-Getting-familiar-with-Remix-IDE.md#2-featured-plugin) section. At any point of time , you can remove them or add a few more icon based on your requirement. The expanded view for all these three icons is collated at one place as shown in the image (appearing in the next section).

### Expanded view of all Three buttons

#### File Explorer

As the name suggest, it helps you organize your files and folder in the workspace. `Workspace` is just an organized area having your default files and setting saved. You can create multiple workspace and organize your content in varied way in each of them. From the image shown below, it is pretty obvious that you can create a _file, folder, push all these code on_ `Github Gist` and you can load file(s) from your `local system`. It also allows you to delete a file or folder or even workspace.

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/expanded_file_explorer_Remix.PNG" width="320" title="expaned view sidebar">

#### Solidity Compiler

The 2nd tab is `Solidity Compiler`, it basically provide you with various option to be set for code compitaion such as c`ompiler version`, `language`, `EVM type/version`, and a few more fucntions. Normally, you don't have to choose the version of solidity compiler manually, as it would be picked from the code itself in the [pragma line](https://github.com/raj-pranav/learn-solidity/blob/main/cheatsheet-hints.md#choosing-solidity-compiler-version) and correct version gets automatically selected.
```solidity
pragma solidity ^x.y.z;
```
Let the language be selected as `Solidity` and EVM compiler version `compiler default` would be best fit for beginners (untill and unless you want a specific version). 

`Auto Compile` feature helps you to automatically keeps on comiling everytime you make any changes to your code (either add or delete). You can choose not to autocompile every time by simply unchecking the corresponding box. I prefer to keep it `ON`, as it acts like a helper and put me confident of my work BUT sometime I prefer to keep it `OFF`. You can decide your own. You can enable optimization, if you are sure about the number of times an opcode would be called during the entire lifetime of the smart contract (don't worry - if you did not understand .. it is an advance topic).
After all the settings in place - You can hit `compile 'name_of_project.sol'`. It would compile and generate two files, which are required during the deployment.
- ABI
- Bytecode

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/solidity-compiler_Remix.PNG" width="320" title="expaned view compiler">

#### Deploy & Run

This section helps you to deploy the Smart Contract on a blockchain. `Environment` is the first option; it ask you to choose the target where you want to deploy the smart contract and upon clicking the dropdown you would see the following option.
- JavaScript VM (London) : 
- JavaScript VM (Berlin) :
- Injected Web3  :
- Web3 Providers :

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/deploy-%26-run_Remix.PNG" width="320" title="expaned view deploy & run">


## 2. Featured Plugin
<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/featured_plugin_Remix.PNG" width="640" title="Remix Feature plugin">

## 3. File & Resources

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/file_resources_Remix.PNG" width="380" title="Remix File & resources">

# Working with online Remix IDE

## Writting a Smart Contract

## Compiling a Smart Contract

## Deploying Smart Contract





# Learn Solidity series - for Beginners 👇
- [What is Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/1-What_is_Solidity.md)
- [Data Types in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/2-Data_types_solidity.md)
- [State Variable in Solidity](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/3-State_variable_solidity.md)
- [What is Smart Contract](https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/4-what-is-a-Smart_contract.md)
