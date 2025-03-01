//SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract reciever{

    uint public price; //Price of appliaction

    uint public value; //Etherium within account as of a certain point in time

    address public creator;

    constructor(uint _setprice){

        price = _setprice;

        creator = msg.sender;

    }

    uint public downloads; //Quantities of downloads that belongs

    uint public amountrecievd; //Amount of money received over all time

    receive() external payable {

      value = msg.value; //updates current value during on 

      amountrecievd += msg.value;

      if(price <= value){

          downloads ++; //Adds quantity of downloads

      }

    }

    function collectmoney () public {

          if(msg.sender == creator) {

          address payable to = payable(msg.sender);

          to.transfer(value); 

          value = address(this).balance;

        }                             

    }

}   
