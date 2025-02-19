// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract code{

 bool public own = false;
 uint public value;

 constructor() payable {

   if(msg.value >= 1 ether){

     own = true; 

     value = msg.value;

   }

 }

}
