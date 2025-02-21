// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

//WARNING THIS CODE IS IN EARLY ALPHA 
//C++ BASED CLI NOT READY SO USE REMIX IDE FOR NOW

contract buyer{

    bool public own = false;

    uint public moneysent; //WORKS IN PLACE OF DEFAULT BROKEN REMIX ETH COUNTER

    address public whoshouldIPay;

    uint public mybalance = msg.sender.balance;

    uint public howmuchIpay; // THIS VARIABLE IS NOT BEING USED YET!

     constructor (address _whotopay) payable {   

        whoshouldIPay = _whotopay;

        if(msg.value >= msg.value) {

            //DONT WORRIE YELLOW UNDERLINE WONT AFFECT ANYTHING DO NOT USE TRANSFER EVER! 

            payable(whoshouldIPay).call{value: msg.value}("");

            moneysent = msg.value;

            own = true;

        }


    }


}
