// SPDX-License-Identifier: GPL-3.0

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

contract mappingAndStruct {
    struct Movie {
        string title;
        string director;
    }

    mapping(uint256 => Movie) public myMovie;

    Movie baru;

    function addMovie(
        uint256 _id,
        string memory _title,
        string memory _director
    ) public {
        baru = Movie(_title, _director);
        myMovie[_id] = baru;
    }

    function getMovie(uint256 _id) public view returns (Movie memory) {
        return myMovie[_id];
    }
}
