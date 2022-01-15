// Tutorial Link on State Variable: https://github.com/raj-pranav/learn-solidity/blob/main/Tutorials/3-state_variable_solidity.md


// SPDX-License-Identifier: MIT-License

pragma solidity >0.5.0 <=0.9.0;

contract xyz {
  uint16 public myHeight = 184; // state variable 'myHeight' is declared and assigned a value
  string public myName; // state variable 'myName' is declared and will be assigned value using constructor
  uint public myPay; // state variable 'myPay' is declared and value will be assigned using function setPay
  
  constructor() {
    myName = 'ETH';
  }
  function setPay() public {
    myPay = 420000;
  }
      
}
