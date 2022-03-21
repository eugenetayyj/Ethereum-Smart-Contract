pragma solidity ^0.5.1;

contract Crud {
    struct User {
        string name;
        string diagnosis;
        string symptoms;
        string treatment;
    }
    mapping(string => User) AllUsers;

    uint public Patient_Count = 0;


    function New_Patient_Info(string memory name, string memory symptoms, string memory diagnosis, string memory treatment) public {
        AllUsers[name].symptoms = symptoms;
        AllUsers[name].diagnosis = diagnosis;
        AllUsers[name].treatment = treatment;
        Patient_Count ++;
    }

    function Get_Symptoms(string memory name) public view returns(string memory) {
        return (AllUsers[name].symptoms);
    }

    function Get_Diagnosis(string memory name) public view returns(string memory) {
        return (AllUsers[name].diagnosis);
    }

    function Get_Treatment(string memory name) public view returns(string memory) {
        return (AllUsers[name].treatment);
    }

    function Update_Symptoms(string memory name, string memory symptoms) public {
        AllUsers[name].symptoms = symptoms;
    }

    function Update_Diagnosis(string memory name, string memory diagnosis) public {
        AllUsers[name].diagnosis = diagnosis;
    }

    function Update_Treatment(string memory name, string memory treatment) public {
        AllUsers[name].treatment = treatment;
    }

    function Delete_Patient_Info(string memory name) public {
        delete AllUsers[name];
        Patient_Count --;
    }
}