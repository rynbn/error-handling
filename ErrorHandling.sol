// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Token Details
    string public name = "MyToken";    // Token name
    string public symbol = "MTK";       // Token symbol
    uint8 public decimals = 10;         // Number of decimal places

    // Total token supply
    uint256 public totalSupply;

    // Mapping to track balances of token holders
    mapping(address => uint256) public balanceOf;

    // Events for token transfers, burning, and minting
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);
    event Mint(address indexed to, uint256 value);

    // Constructor to initialize the token with initial supply
    constructor(uint256 initialSupply) {
        totalSupply = initialSupply;
        balanceOf[msg.sender] = totalSupply;   // Assign initial supply to the contract deployer
    }

    // Transfer tokens from sender to recipient
    function transfer(address _to, uint256 _value) public returns (bool success) {
        // Check for valid recipient address and sufficient balance
        require(_to != address(0), "Invalid address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        // Prevent overflow
        assert(balanceOf[_to] + _value >= balanceOf[_to]);

        // Transfer tokens
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    // Burn tokens from sender's balance
    function burn(uint256 _value) public returns (bool success) {
        // Check for sufficient balance
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");
        balanceOf[msg.sender] -= _value;
        totalSupply -= _value;
        emit Burn(msg.sender, _value);
        return true;
    }

    // Mint new tokens and assign to the specified recipient
    function mint(address _to, uint256 _value) public returns (bool success) {
        // Check for valid recipient address
        require(_to != address(0), "Invalid address");

        // Check if the value to mint is within limits
        if (_value >= 1000) {
            revert("Too much tokens");
        }

        // Mint new tokens and update total supply
        balanceOf[_to] += _value;
        totalSupply += _value;
        emit Mint(_to, _value);
        return true;
    }
}
