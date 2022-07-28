// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Looping {
    uint256[] numberLists = [1, 2, 3, 4, 5, 6, 7, 8, 910];

    function checkMultiples(uint256 _num, uint256 _nums)
        private
        view
        returns (bool)
    {
        if (_num % _nums == 0) {
            return true;
        }
        return false;
    }

    function countMultiples(uint256 _number) public view returns (uint256) {
        uint256 jumlah = 0;
        for (uint256 i = 1; i < numberLists.length; i++) {
            if (checkMultiples(numberLists[i], _number)) {
                jumlah++;
            }
        }
        return jumlah;
    }
}

contract myLoopingPracticeContract {
    uint256[] numberLists = [1, 4, 35, 56];
    uint256[] longList = [
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20
    ];

    function numbersListLoop(uint256 number) public view returns (bool) {
        bool numberExist = false;
        for (uint256 i = 0; i < numberLists.length; i++) {
            if (numberLists[i] == number) {
                numberExist = true;
            }
        }
        return numberExist;
    }

    function evenNumbersLoop() public view returns (uint256) {
        uint256 count = 0;
        for (uint256 i = 0; i < longList.length; i++) {
            if (checkEven(longList[i])) {
                count++;
            }
        }
        return count;
    }

    function checkEven(uint256 _num) private view returns (bool) {
        if (_num % 2 == 0) {
            return true;
        }
        return false;
    }
}
