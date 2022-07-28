// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract learnFunction {
    function remoteControlOpen(bool closedDoor) public returns (bool) {}

    function addValues() public view returns (uint256) {
        uint256 a = 2;
        uint256 b = 3;
        uint256 result = a + b;
        return result;
    }

    function addNewValues() public view returns (uint256) {
        uint256 a = 1;
        uint256 b = 2;
        uint256 result = a + b;
        return result;
    }

    // Latihan membuat funciton
    function multiplyCalculator(uint256 a, uint256 b)
        public
        view
        returns (uint256)
    {
        uint256 result = a * b;
        return result;
    }
}
