// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {Raffle} from "../src/Raffle.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract DeployRaffle is Script {
    function run() external returns (Raffle, HelperConfig) {
        HelperConfig helperConfig = new HelperConfig();
        (
            address vrfCoordinatorV2,
            uint256 entranceFee,
            bytes32 gasLane,
            uint64 subscriptionId,
            uint32 callbackGasLimit,
            uint256 interval
        ) = helperConfig.activeNetworkConfig();

        vm.startBroadcast();
        Raffle raffle = new Raffle(
            vrfCoordinatorV2,
            entranceFee,
            gasLane,
            subscriptionId,
            callbackGasLimit,
            interval
        );
        vm.stopBroadcast();

        return (raffle, helperConfig);
    }
}
