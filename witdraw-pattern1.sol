// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract test{

    modifier onlyOwner{
        require(true);
        _;
    }

    function returnFunds() public onlyOwner returns(bool success){
        for(uint i=0; funders.length; i++){
            funders[i].transfer(contributedAmmount);
        }
        return true;
    }

    function withdrawFunds(uint amount) public returns(bool success){
        require(balance[msg.sender] >= amount);
        balance[msg.sender] -= amount;
        msg.sender.transfer(amount);
        return true;
    }
}