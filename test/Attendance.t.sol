//SPDX-License-Modifier : MIT

pragma solidity ^0.8.13;

import {Test} from 'forge-std/Test.sol';
import {Attendance} from '../src/Attendance.sol';

contract AttendanceTest is Test {
    string testUsername;
    string testCourse;
    Attendance public attendance;

    function setUp() public {
        testUsername = "abishek";
        testCourse = "math";
        attendance = new Attendance();
    }
    function testt_registrationCheck() public {
        assertEq(attendance.checkRegistration("random"), false);
    }
    function test_userRegistered() public {
        attendance.registerUser(testUsername);
        assertEq(attendance.checkRegistration(testUsername), true);
    }
    function test_attendanceMarked() public {
        attendance.registerUser(testUsername);
        assertEq(attendance.markAttendance(testUsername, testCourse), true);
    }
}