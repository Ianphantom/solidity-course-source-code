// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FunctionOverloading {
    function getSum(uint256 _a, uint256 _b) public pure returns (uint256) {
        return _a + _b;
    }

    function getSum(
        uint256 _a,
        uint256 _b,
        uint256 _c
    ) public pure returns (uint256) {
        return _a + _b + _c;
    }

    function resultSum1() public pure returns (uint256) {
        return getSum(5, 7);
    }

    function resultSum2() public pure returns (uint256) {
        return getSum(1, 2, 3);
    }
}
