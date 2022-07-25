pragma solidity >=0.7.0 <0.9.0;

contract learnStrings {
    string greetings = "Hello!";

    function sayHello() public view returns (string memory) {
        return greetings;
    }

    function changeGreeting(string memory _change) public {
        greetings = _change;
    }

    function getChar() public view returns (uint256) {
        bytes memory stringToBytes = bytes(greetings);
        return stringToBytes.length;
    }
}

contract ExerciseStrings {
    string favoriteColour = "Blue";

    function yourFavoriteColour() public view returns (string memory) {
        return favoriteColour;
    }

    function changeFavoriteColour(string memory newColour) public {
        favoriteColour = newColour;
    }

    function getLengthColour() public view returns (uint256) {
        bytes memory stringToBytes = bytes(favoriteColour);
        return stringToBytes.length;
    }
}
