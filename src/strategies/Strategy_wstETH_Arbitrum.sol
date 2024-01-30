// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {BaseStrategy} from "../BaseStrategy.sol";


contract Strategy_wstETH_Arbitrum is BaseStrategy {

    constructor (address _factory) BaseStrategy(_factory) {
        token = 0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0;
    }

}