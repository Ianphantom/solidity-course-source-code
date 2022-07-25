pragma solidity >=0.7.0 <0.9.0;

contract learnMapping {
    mapping(address => uint256) public myMap;

    function setAddress(address _address, uint256 _data) public {
        myMap[_address] = _data;
    }

    function getAddress(address _address) public view returns (uint256) {
        return myMap[_address];
    }

    function removeAddress(address _address) public {
        delete myMap[_address];
    }
}
