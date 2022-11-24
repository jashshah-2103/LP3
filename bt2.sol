// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.11;

contract BankSystem{

    uint balance;

    function deposit(uint amount) public returns(uint)
    {
        balance+=amount;
        return 1;
    }

    function withdraw(uint amount) public returns(uint)
    {
        if(amount<=balance)
        {
            balance-=amount;
            return 1;
        }
        else return 0;
    }

    function showBalance() view public returns (uint){
        return balance;
    }

}
