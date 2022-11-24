// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.11;

contract StudentSystem
{
    struct Student{
        uint roll_no;
        string name;
        string contact;
    }

    Student[20] students;
    uint i=0;

    function registerStudent(uint roll_no,string memory name,string memory contact) public returns(string memory)
    {
        if(i<20)
        {
            Student memory s=Student(roll_no,name,contact);
            students[i]=s;
            i=i+1;
            return "Registered Successfully";
        }
        else return "Max Students Registered";
    }

    function getDetails(uint roll_no) view public returns (string memory)
    {
        for(uint j=0;j<i;j++)
        {
            Student memory s=students[j];
            if(s.roll_no==roll_no)
            {
                return string(bytes.concat("Name: ",bytes(s.name)," Contact: ",bytes(s.contact)));
            }
        }
        return "Not Found";
    }
}
