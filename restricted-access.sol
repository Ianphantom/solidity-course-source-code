// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract RestrictedAccess {
    address public owner = msg.sender;

    uint256 public creationTime = block.timestamp;

    modifier onlyBy(address _addr) {
        require(msg.sender == _addr, "Sender Not Authorized");
        _;
    }

    function changeOwnerAddress(address _newAddress) public onlyBy(owner) {
        owner = _newAddress;
    }

    modifier onlyAfter(uint256 _time) {
        require(block.timestamp >= _time, "Sender need to wait");
        _;
    }

    function disownOwner()
        public
        onlyBy(owner)
        onlyAfter(creationTime + 3 weeks)
    {
        delete owner;
    }
}
