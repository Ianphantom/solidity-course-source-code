// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Owner {
    address owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier costs(uint256 price) {
        require(msg.value >= price);
        _;
    }
}

contract Register is Owner {
    mapping(address => bool) registeredAddresses;
    uint256 price;

    constructor(uint256 initialPrice) public {
        price = initialPrice;
    }

    function register() public payable costs(price) {
        registeredAddresses[msg.sender] = true;
    }

    function changePrice(uint256 _price) public onlyOwner {
        price = _price;
    }
}
