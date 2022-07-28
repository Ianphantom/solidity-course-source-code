// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ComparisonOperators {
    uint256 a = 4;
    uint256 b = 6;

    function compare() public view {
        require(a > b, "That is False");
    }
}
