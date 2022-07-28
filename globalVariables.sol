// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract LedgerBalance {
    mapping(address => uint256) balance;

    function updatesBalance(uint256 newBalance) public {
        balance[msg.sender] = newBalance;
    }

    function getBalance() public view returns (uint256) {
        return balance[msg.sender];
    }
}

contract Updated {
    function updatesBalance() public {
        LedgerBalance ledgerBalance = new LedgerBalance();
        ledgerBalance.updatesBalance(30);
    }
}

contract SimpleStorage {
    uint256 storedData;

    function set(uint256 x) public {
        // storedData = x;
        // storedData = block.difficulty;
        // storedData = block.timestamp;
        storedData = block.number;
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}
