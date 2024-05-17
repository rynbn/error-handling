# Solidity Smart Contract: Understanding require(), assert(), and revert()

This repository contains a Solidity smart contract demonstrating various error handling mechanisms.

## Overview

This Solidity smart contract showcases error handling techniques using `require()`, `revert()`, and `assert()` functions to ensure the integrity and safety of the contract's operations.

## Usage

To deploy and interact with this contract, you can use Remix Ethereum IDE, a powerful online tool for writing, compiling, and deploying Ethereum smart contracts. Follow these steps:

1. **Open Remix Ethereum IDE**: Navigate to the Remix website ([remix.ethereum.org](https://remix.ethereum.org/)).

2. **Create a New File**: Click on the '+' icon in the file explorer panel to create a new file.

3. **Copy and Paste Contract Code**: Copy the Solidity code of the `ErrorHandlingExample.sol` contract provided in this repository and paste it into the new file in Remix.

4. **Compile the Contract**: In the Remix interface, go to the 'Solidity Compiler' tab and compile the contract by clicking the 'Compile ErrorHandlingExample.sol' button.

5. **Deploy the Contract**: Click on the 'Deploy' button to deploy the contract to the selected environment. This will create an instance of the contract on the blockchain.

6. **Interact with the Contract**: Once deployed, you can interact with the contract using the provided functions (`setValue()` and `checkValue()`). Use the 'Deployed Contracts' section to access the contract's functions and view its state variables.

7. **Testing Error Handling**: Test the error handling functionalities by calling the `setValue()` function with various inputs. Observe how the contract responds to invalid inputs and error conditions, triggering `require()` and `revert()` statements.

8. **Verify Contract State**: After interacting with the contract, you can use the `checkValue()` function to verify the state of the contract and ensure that error handling mechanisms are functioning as expected.

## Functionalities

### require()

The `require()` function is used to validate certain conditions within a smart contract. If the condition evaluates to `false`, the function will revert the transaction and consume all gas. In this contract, `require()` is used in the `setValue()` function to ensure that the value passed is greater than zero. If the condition fails, it returns an error message indicating that the value must be greater than zero.

### revert()

The `revert()` function is used to revert the state changes made by a transaction. It allows custom error messages to be provided. In this contract, `revert()` is used in the `setValue()` function to revert the transaction if the value passed is equal to or greater than 1000, indicating that the value must be three digits only.

### assert()

The `assert()` function is used to check for internal errors and conditions that should never occur. If the condition evaluates to `false`, the transaction is reverted, indicating a bug in the contract's logic. In this contract, `assert()` is used in the `checkValue()` function to ensure that the value stored is always greater than zero. If this condition fails, it indicates a critical issue in the contract's implementation.


**Authors**

- Ryan Lester Aban
- email: 422004489@ntc.edu.ph

**License**
This project is licensed under the Ryan Lester Aban License






