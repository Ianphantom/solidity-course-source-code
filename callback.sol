// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FallBack {
    event Log(uint256 gas);
    event Received(address, uint256);

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    address userAddress;

    constructor() public {
        userAddress = msg.sender;
    }

    fallback() external payable {
        emit Log(gasleft());
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendToFallBack {
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callToFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed To Send!");
    }
}
