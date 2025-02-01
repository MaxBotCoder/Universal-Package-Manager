//SPDX-License-Identifier: MIT
pragma solidity 0.8.2;

contract code{
    string public codestored;
    uint public revision;
    address public myaddress;
   
    
        constructor (){
        myaddress = msg.sender; 
    } 
    

    function updatecode(string memory _update)public{
        if(myaddress == msg.sender){
            codestored = _update;
            revision++;
        }
    }
}

