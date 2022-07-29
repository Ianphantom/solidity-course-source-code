// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Oracle {
    address admin;
    uint256 public rand;

    constructor() public {
        admin = msg.sender;
    }

    function setValue(uint256 _value) external {
        require(admin == msg.sender);
        rand = _value;
    }
}

contract GenerateRandomNumber {
    Oracle oracle;

    constructor(address oracleAddress) public {
        oracle = Oracle(oracleAddress);
    }

    function randMod(uint256 range) external view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        oracle.rand,
                        block.timestamp,
                        block.difficulty,
                        msg.sender
                    )
                )
            ) % range;
    }
}
