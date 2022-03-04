// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "ds-test/test.sol";

import "./Irukandji.sol";

contract IrukandjiTest is DSTest {
    Irukandji irukandji;

    function setUp() public {
        irukandji = new Irukandji();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
