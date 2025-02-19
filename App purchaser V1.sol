// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract code{

 bool public own = false;
 uint public value;
 address public moneyreciever = example;

 constructor() payable {

   if(msg.value >= 1 ether && moneyreciever == example){

     own = true; 

     value = msg.value;

     payable(moneyreciever).transfer(msg.value);

   }

 }

}  
