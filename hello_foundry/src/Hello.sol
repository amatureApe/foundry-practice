// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Hello {
    string public greeting;

    function setGreeting(string calldata _greeting) public {
        greeting = _greeting;
    }

    function getGreeting() public view returns (string memory) {
        return greeting;
    }
}
