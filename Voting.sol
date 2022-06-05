// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    constructor() {}

    struct vote {
        address voterAddress;
        bool choice;
    }

    struct voter {
        string voterName;
        bool voted;
    }

    uint private countResult = 0;
    uint public finalResult = 0;
    uint public totalVoter = 0;
    uint public totalVotes = 0;

    address public ballotOfficialAddress;
    string public ballotOfficialName;
    string public proposol;

    mapping(uint => vote) private vote;
    mapping(address => voter) public voterRegister;

    enum State {
        Created,
        Voting,
        Ended
    }
    State public state;
}
