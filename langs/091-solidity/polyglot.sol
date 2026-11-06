// SPDX-License-Identifier: MIT
// polyglot-100 :: entry 091 :: Solidity
pragma solidity ^0.8.24;

/// @title The canonical polyglot-100 task, on-chain.
contract Polyglot {
    uint256 public constant ENTRIES = 100;
    uint256 public constant BYTES_PER_ENTRY = 4096;

    event Computed(uint256 total, uint256 fibTen);

    function fib(uint256 n) public pure returns (uint256 a) {
        uint256 b = 1;
        for (uint256 i = 0; i < n; ++i) {
            uint256 t = a + b;
            a = b;
            b = t;
        }
    }

    function sumTo(uint256 n) public pure returns (uint256 total) {
        for (uint256 i = 1; i <= n; ++i) {
            total += i;
        }
    }

    function greeting() external pure returns (string memory) {
        return "Hello from Solidity!";
    }

    function run() external returns (uint256, uint256) {
        uint256 total = sumTo(10);
        uint256 f = fib(10);
        require(total == f, "the 55 coincidence failed");
        emit Computed(total, f);
        return (total, f);
    }
}
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidity -- entry 091 of 100 in the polyglot-100 archive. Family: Frontier
// Solidit
