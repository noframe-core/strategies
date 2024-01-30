// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2, console} from "forge-std/Test.sol";

import {Factory} from "../src/Factory.sol";
import {Vault} from "../src/Vault.sol";
import {BaseStrategy} from "../src/BaseStrategy.sol";

import {Strategy_wstETH_Arbitrum} from "../src/strategies/Strategy_wstETH_Arbitrum.sol";

contract VaultTest is Test {

    function setUp() public {
        vm.createSelectFork(vm.envString("RPC_ARBITRUM"));
        Factory factory = new Factory();
        Strategy_wstETH_Arbitrum strategy = new Strategy_wstETH_Arbitrum(address(factory));
        Vault vault = Vault(factory.deployVault(address(strategy), "name", "name"));
        console.log(vault.token());
    }

    function test_Increment() public {
    }

    function testFuzz_SetNumber(uint256 x) public {
    }
}
