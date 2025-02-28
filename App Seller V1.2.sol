//SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract reciever{

    uint public price;

    uint public value;

    address public creator;

    constructor(uint _setprice){

        price = _setprice;

        creator = msg.sender;

    }

    uint public downloads;

    uint public amountrecievd;

    receive() external payable {

      value = msg.value;

      amountrecievd += msg.value;

      if(value <= price){

          downloads ++;

      }

    }

    function collectmoney () public {

          if(msg.sender == creator) {

          address payable to = payable(msg.sender);

          to.transfer(value); 

        }                                   

    }

} 
