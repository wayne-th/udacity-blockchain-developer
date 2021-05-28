// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./shared/BaseFlightSuretyData.sol";

import "./shared/OwnableContract.sol";

import "./data/OperationalContract.sol";
import "./data/CallableContract.sol";

import "./data/Insurer.sol";
import "./data/Insuree.sol";

contract FlightSuretyData is OwnableContract, OperationalContract, CallableContract, Insurer, Insuree, BaseFlightSuretyData {

    constructor() OwnableContract(){
    }

    /**
     * @dev Initial funding for the insurance. Unless there are too many delayed flights
     *      resulting in insurance payouts, the contract should be self-sustaining
     *
     */
    function fund() public payable {
    }

    /**
    * @dev Fallback function for funding smart contract.
    *
    */
    fallback() external payable {
        fund();
    }

    receive() external payable {
        fund();
    }


}

