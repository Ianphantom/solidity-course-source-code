// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Enum {
    enum frenchFriesSize {
        LARGE,
        MEDIUM,
        SMALL
    }

    frenchFriesSize choice;
    frenchFriesSize constant defaultChoice = frenchFriesSize.LARGE;

    function setSmall() public {
        choice = frenchFriesSize.SMALL;
    }

    function getChoice() public view returns (frenchFriesSize) {
        return choice;
    }

    function getDefaultChoice() public pure returns (uint256) {
        return uint256(defaultChoice);
    }
}

contract enumExercise {
    enum shirtColor {
        RED,
        WHITE,
        GREEN,
        BLUE
    }

    shirtColor constant defaultChoice = shirtColor.BLUE;
    shirtColor choice;

    function setWhite() public {
        choice = shirtColor.WHITE;
    }

    function getChoice() public view returns (shirtColor) {
        return choice;
    }

    function getDefaultChoice() public pure returns (shirtColor) {
        return defaultChoice;
    }
}
