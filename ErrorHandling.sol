// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {

    uint256 public value; 

    // Constructor to initialize the contract with a value
    constructor() {
        value = 0; // Set the initial value to zero
    }

    // Function that uses require() to check a condition
    function setValue(uint256 _value) public {
        require(_value > 0, "Value must be greater than zero");
        value = _value;
        if (_value >= 1000) {
            revert("Value must be three digits only");
        }
    }

    // Function that uses assert() to check an invariant
    function checkValue() public view returns (bool) {
        assert(value > 0);  // This should always be true if setValue is used correctly
        return true;
    }

}
