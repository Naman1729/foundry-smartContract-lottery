// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract CreateSubscription is Script {
    function CreateSubscriptionUsingConfig() public returns (uint64) {
        HelperConfig helperConfig = new HelperConfig();
        (address vrfCoordinatorV2, , , , , ) = helperConfig
            .activeNetworkConfig();
    }

    function createSubscription(
        address vrfCoordinatorV2
    ) public returns (uint64) {}

    function run() external returns (uint64) {
        return CreateSubscriptionUsingConfig();
    }
}
