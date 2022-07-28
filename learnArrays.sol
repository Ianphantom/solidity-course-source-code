// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract learnArrays {
    uint256[] myArray;
    uint256[] myArray2;
    uint256[200] myFixedSizeArray;

    function push(uint256 number) public {
        myArray.push(number);
    }

    function pop() public {
        myArray.pop();
    }

    function getLength() public view returns (uint256) {
        return myArray.length;
    }

    function remove(uint256 i) public {
        delete myArray[i];
    }
}

contract ExerciseArrays {
    uint256[] changeArray;

    function push(uint256 number) public {
        changeArray.push(number);
    }

    function removeElement(uint256 number) public {
        uint256 temp;
        uint256 lastIndex = getLength() - 1;
        uint256 deleteIndex = changeArray[number];

        temp = lastIndex;
        lastIndex = deleteIndex;
        changeArray[number] = temp;
        changeArray.pop();
    }

    function getLength() public view returns (uint256) {
        return changeArray.length;
    }
}
