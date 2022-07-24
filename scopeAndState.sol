pragma solidity >=0.7.0 <0.9.0;

contract stateScope {
    uint256 public data = 10;

    function x() public returns (uint256) {
        uint256 newData = data + 15;
        return newData;
    }

    function y() public returns (uint256) {
        return data;
    }
}
