// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    uint256 value;

    function getValue() external view returns (uint256) {
        return value;
    }

    function getNewValue() external pure returns (uint256) {
        return 3 + 3;
    }

    function setValue(uint256 _value) external {
        value = _value;
    }
}

contract Exercise {
    uint256 value;

    function multiply() external pure returns (uint256) {
        return 3 * 7;
    }

    function valuePlusThree() external view returns (uint256) {
        return value + 3;
    }
}
