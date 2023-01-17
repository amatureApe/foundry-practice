// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Hello.sol";

contract HelloTest is Test {
    Hello public hello;

    function setUp() public {
        hello = new Hello();
    }

    function testSetGreeting() public {
        hello.setGreeting("yoyo");
        assertEq(hello.greeting(), "yoyo");
    }

    function testGetGreeting() public returns (string memory) {
        hello.setGreeting("yoyo");
        assertEq(hello.getGreeting(), "yoyo");
        return hello.getGreeting();
    }

    function testGetGreeting2() public {
        assertEq(hello.getGreeting(), "yoyo");
    }

    function testGetGreeting3() public returns (string memory) {
        hello.setGreeting("yoyo");
        assertEq(hello.getGreeting(), "yoyo");
        return hello.getGreeting();
    }
}
