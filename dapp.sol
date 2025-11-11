// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Motivator {
    struct Quote {
        string text;
        address author;
    }

    Quote[] private quotes;

    event QuoteAdded(string text, address indexed author);

    // Add a new quote
    function addQuote(string memory _text) public {
        quotes.push(Quote(_text, msg.sender));
        emit QuoteAdded(_text, msg.sender);
    }

    // Get total count
    function getTotalQuotes() public view returns (uint256) {
        return quotes.length;
    }

    // Get quote by index
    function getQuote(uint256 index) public view returns (string memory, address) {
        require(index < quotes.length, "Invalid index");
        Quote storage q = quotes[index];
        return (q.text, q.author);
    }

    // Get random quote (pseudo-random, for demo only)
    function getRandomQuote() public view returns (string memory, address) {
        require(quotes.length > 0, "No quotes yet");
        uint256 index = uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % quotes.length;
        Quote storage q = quotes[index];
        return (q.text, q.author);
    }
}
