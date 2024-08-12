// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//write a smart contract that implements the require(), assert() and revert() statements.

// Creating a contract
contract drivinglicense_apply {
    
    uint public age;
    address public owner = msg.sender;

    // This is a function to check eligible age
    function current_age(uint a) public{
        require(a>=18,"Age should be greater than 18");
        age=a;
    }

    // This is a function to check Education qualification
    function check_education(uint b) public pure{
        if(b<10){
            revert ("Education qualification should be minimum 10.");
        }
    }

    // This is the function to check owner
    function checkOwner() public view{
        assert(owner==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }
  
}
