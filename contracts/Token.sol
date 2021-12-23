//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract Token {
    string public name = "MART Token";
    string public symbol = "Mart";
    uint public totalSuply = 100000;
    mapping(address => uint) balances;

    constructor () {
        balances[msg.sender] = totalSuply;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender] >= amount, "Not Enough Token");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint) {
        return balances[account];
    }

}