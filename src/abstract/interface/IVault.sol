// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title YearnVault Interface
 * @dev Interface for Yearn Vaults, defining the basic operations and properties.
 */
interface YearnVault {
    /**
     * @dev Returns the address of the token managed by this vault.
     */
    function token() external view returns (address);

    /**
     * @dev Deposits a specified amount of tokens into the vault.
     * @param amount The amount of tokens to deposit.
     * @return The amount of shares received.
     */
    function deposit(uint256 amount) external returns (uint256);

    /**
     * @dev Withdraws a specified amount of shares from the vault.
     * @param shareAmount The amount of shares to withdraw.
     * @param recipient The address to receive the withdrawn tokens.
     * @return The amount of tokens withdrawn.
     */
    function withdraw(
        uint256 shareAmount,
        address recipient
    ) external returns (uint256);

    /**
     * @dev Returns the current price per share of the vault.
     */
    function pricePerShare() external view returns (uint256);

    /**
     * @dev Returns the total supply of shares in the vault.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the name of the vault.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the vault.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the number of decimals used by the vault.
     */
    function decimals() external view returns (uint8);

    /**
     * @dev Returns the balance of shares for a given account.
     * @param account The address to query the balance for.
     */
    function balanceOf(address account) external view returns (uint256);
}
