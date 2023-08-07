// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Attendance {
    mapping(string students => bool isRegistered) listOfStudents;
    mapping(string students => mapping(string course => uint256 attendanceNo)) attendanceList;
    function checkRegistration(string memory _username) public view returns (bool) {
        return listOfStudents[_username];
    }
    function registerUser(string memory _username) public returns (bool) {
        if(checkRegistration(_username)) {
            return false;
        }
        listOfStudents[_username] = true;
        return true;
    }
    function getAttendance(string memory _username, string memory _courseName) public view returns (uint256) {
        return attendanceList[_username][_courseName];
    }
    function markAttendance(string memory _username, string memory _courseName) public returns (bool) {
        if(!checkRegistration(_username)){
            return false;
        }
        attendanceList[_username][_courseName]++;
        return true;
    }

}
