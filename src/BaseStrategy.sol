// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ERC20} from "@openzeppelin/token/ERC20/ERC20.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/utils/ReentrancyGuard.sol";


abstract contract BaseStrategy is Ownable {

    address public token;
    address public vault;
    address public factory;

    constructor (address _factory) Ownable(msg.sender) {
        factory = _factory;
    }

    function initialize(address _vault) public {
        require(msg.sender == factory);
        vault = _vault;
    }


    function deposit() public {}
    function withdraw(uint256 _amount) public {}

    function beforeDeposit() public {}
    function afterDeposit() public {}

    function tokensWorking() public view returns (uint256) {
        return 0;
    }


}