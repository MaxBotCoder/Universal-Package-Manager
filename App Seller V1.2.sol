//SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract reciever{

    uint public price;

    constructor(uint _setprice){

        price = _setprice;

    }

    uint public downloads;

    uint public amountrecievd;

    receive() external payable { 

      amountrecievd = msg.value;

      if(msg.value == msg.value + price){ //Detects if price has been updated

          downloads ++;

      }

    }
    
}
