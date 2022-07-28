// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FinalOperatorsExercise {
    uint256 a = 300;
    uint256 b = 12;
    uint256 c = 47;

    function finalize() public view returns (uint256) {
        uint256 d = 23;
        if (a >= b && b < a) {
            d *= d;
            return d - b;
        }
        return d;
    }
}
