// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Vault} from "./Vault.sol";
import {BaseStrategy} from "./BaseStrategy.sol";

contract Factory {

    function deployVault(address _strategy, string memory _name, string memory _symbol) public returns(address vault) {
        require(BaseStrategy(_strategy).vault() == address(0), "");
        vault = address(new Vault(_strategy, _name, _symbol));
        BaseStrategy(_strategy).initialize(vault);
        return vault;
    }

}