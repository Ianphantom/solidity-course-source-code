// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract WelcomeToSolidity {
    constructor() public {}

    function getResult() public view returns (uint256) {
        uint256 a = 10;
        uint256 b = 5;
        uint256 result = a + b;
        return result;
    }
}
