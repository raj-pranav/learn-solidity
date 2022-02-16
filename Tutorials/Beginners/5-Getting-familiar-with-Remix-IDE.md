<img src="/Tutorials/header-images/5-OG-Getting-familiar-with-Remix-IDE.png" width="630" title="Remix IDE for solidity">

[<img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/PranavRaj90?style=social">](https://twitter.com/intent/follow?screen_name=PranavRaj90)
[<img alt="GitHub watchers" src="https://img.shields.io/github/watchers/raj-pranav/learn-solidity?label=Learn%20Solidity&style=social">](https://github.com/raj-pranav/learn-solidity/)
[<img align= "right" src="/Tutorials/Beginners/images-for-docs/home.png" width="30" title="Repo Home">](https://github.com/raj-pranav/learn-solidity)


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

Release note for Remix IDE v0.21.1 is out. [Read more](https://medium.com/remix-ide/remix-v0-21-0-v0-21-1-released-550dbde6428b)

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

`Auto Compile` feature helps you to automatically keeps on comiling everytime you make any changes to your code (either add or delete). You can choose not to autocompile every time by simply unchecking the corresponding box. I prefer to keep it `ON`, as it acts like a helper and put me confident of my work BUT sometime I prefer to keep it `OFF`. You can decide your own. You can enable optimization, the optimizer tries to simplify complicated expressions, which reduces both code size and execution cost (don't worry - if you did not understand .. it is an advance topic).

After all the settings in place - You can hit `compile 'name_of_project.sol'`. There could be more than one contracts in your solidity code and you can select the one that you want to compile (more on this in Intermediate section..).

It would compile and generate two files, which are required during the deployment.
- ABI
- Bytecode

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/solidity-compiler_Remix.PNG" width="320" title="expaned view compiler">

After compilation, you would also see two `json` files, which are; 1. `name-of-contract.json` and 2. `name-of-contract_metadata.json`, created inside _contracts/artifacts/_ and can be explored using file explorer.

#### Deploy & Run

This section helps you to deploy the Smart Contract on a selected blockchain. `Environment` is the first option; it ask you to choose the target where you want to deploy the smart contract and upon clicking the dropdown you would see the following option.
- JavaScript VM (London) : Temporarily sandbox blockchain in the browser, reload will reset everything
- JavaScript VM (Berlin) : Same as above
- Injected Web3  : Remix will connect to an injected web3 provider, such as `metamask`
- Web3 Providers : Remix will connect to an injected web3 provider using the URL provided (e.g from INFURA)

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/deploy-%26-run_Remix.PNG" width="320" title="expaned view deploy & run">

Based on the Environment selection, an account would be visible with the some tokens. For VM's, by default there are 15 accounts and each having 100 ethers (it's a fake ether, so don't get overwhelmed 😆..) and the tokens for other selection would be fetched from respetive sources. Let the Gas Limit as it is `3000000`, this sets the maximum amount of gas (3000000 wei) that will be allowed for all the transactions created in Remix. The `value` section sets the amount of ETH, WEI, GWEI etc that is to be sent to a contract.

Next click on the `Deploy` button; it sends a transaction that deploys the selected contract on the connected blockchain. It works instantly if VM is selected as environemnt otherwise takes some time to deploy the contract on the blockchain. After the contract is deployed, you can interact with them using autogenerated UI. We will see it in later section.

## 2. Featured Plugin
This section has list of various plugin supported by online Remix IDE. You can click on the last icon `more...`, it will open up a Plugin Manager in the left side. Now you can select any plugin to install or uninstall an existing plugin. The sequence of plugins keeps on changing , so don't worry about it. You can also search the plugin or connect a local plugin.

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/featured_plugin_Remix.PNG" width="640" title="Remix Feature plugin">

## 3. File & Resources
This is just a additional help section to keep most commonly used operations together. Open an existing file from your system, connect to a localhost.
> somehow `New File` function to create a file is not working.
There are list of resources such as blogs, official post, documentation etc...

At the bottom, you can see 4 buttons namely `Gist`, `GitHub`, `Ipfs`, `https` -> This allow you to load files/code from these sources directly to the current workspace.

<img src="https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/Beginners/images-for-docs/file_resources_Remix.PNG" width="380" title="Remix File & resources">


```
I hope you like the content and this post is primarly focusing Beginners starting out to explore Solidity programming language. This will help you to understand the user interface in best possible way and get started with writting solidity code and deploy on any target instance.
```

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

