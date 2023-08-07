//SPDX-License-Identifier : MIT

pragma solidity ^0.8.13;

import {Attendance} from "../src/Attendance.sol";
import {Script} from "forge-std/Script.sol";

contract DeployAttendance is Script {
    function run() external returns (Attendance) {
        vm.startBroadcast();
        Attendance att = new Attendance();
        vm.stopBroadcast();
    }
}
