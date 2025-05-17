// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IERC20} from "forge-std/interfaces/IERC20.sol";
import {IHooks} from "v4-core/src/interfaces/IHooks.sol";
import {Currency} from "v4-core/src/types/Currency.sol";

/// @notice Shared configuration between scripts
contract Config {
    /// @dev populated with default anvil addresses
    IERC20 constant token0 = IERC20(address(0x6E64b5403C36Ab073cbD1FEb7951E536825ebF60));
    IERC20 constant token1 = IERC20(address(0x7bbA73CCe26D4b912107d2D8E3963E924faa0fB7));
    IHooks constant hookContract = IHooks(address(0xD2C6dffE0b54441C281AdB6B8751D1d6114c0040));

    Currency constant currency0 = Currency.wrap(address(token0));
    Currency constant currency1 = Currency.wrap(address(token1));
}
