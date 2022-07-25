pragma solidity >=0.7.0 <0.9.0;

contract ComparisonOperators {
    uint256 a = 4;
    uint256 b = 6;

    function logic() public view returns (uint256) {
        uint256 result = 0;
        if (a < b || a == 5) {
            result = a + b;
        }
        return result;
    }

    function exercise() public view returns (uint256) {
        uint256 a1 = 17;
        uint256 b1 = 32;
        uint256 result = 0;
        if (b1 > a1 && a1 != b1) {
            result = a * b;
        }
        return result;
    }
}
