pragma solidity >=0.7.0 <0.9.0;

contract Member {
    string name;
    uint256 age;

    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }
}

contract Teacher is Member {
    constructor(string memory n, uint256 a) Member(n, a) {}

    function getName() public view returns (string memory) {
        return name;
    }
}

// Exercise

contract Base {
    uint256 data;

    constructor(uint256 _data) {
        data = _data;
    }

    function getData() public view returns (uint256) {
        return data;
    }
}

contract Derived is Base {
    constructor(uint256 a) Base(a) {}
}
