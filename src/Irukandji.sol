// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.11;
pragma experimental ABIEncoderV2;

import { ERC721 } from "lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import { Ownable } from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";

/// @title The World of Irukandji
/// @author bayu (github.com/pyk)
/// @notice A face, a brand, and a lifestyle by @yourbae
contract Irukandji is ERC721, Ownable {
    /// ███ Storages ███████████████████████████████████████████████████████████

    /// @notice Total supply for public sale
    uint256 public PUBLIC_SALE_SUPPLY = 5555;

    /// @notice Public mint price
    uint256 public PUBLIC_MINT_PRICE = 0.2 ether;

    /// @notice Max mint per tx
    uint256 public PUBLIC_MAX_MINT = 2;

    /// @notice Public sale timestamp
    /// @dev NOTE: Update this before deployment
    uint256 public PUBLIC_SALE_TIMESTAMP = 1646396185;

    /// @notice Total supply for whitelist
    uint256 public WHITELIST_SUPPLY = 2778;

    /// @notice Whitelist mint price
    uint256 public WHITELIST_MINT_PRICE = 0.1 ether;

    /// @notice Total supply for the team (strategic)
    uint256 public TEAM_RESERVE = 555;

    /// @notice Maximum total supply of the Kandjis
    uint256 public MAX_SUPPLY = PUBLIC_SALE_SUPPLY + WHITELIST_SUPPLY + TEAM_RESERVE;

    /// ███ Events █████████████████████████████████████████████████████████████

    event PublicSaleSupplyUpdated(uint256 newAmount);
    event PublicMintPriceUpdated(uint256 newPrice);
    event PublicMaximumMintUpdated(uint256 newAmount);
    event PublicSaleTimestampUpdated(uint256 newTimestamp);
    event WhitelistSupplyUpdated(uint256 newAmount);
    event WhitelistMintPriceUpdated(uint256 newPrice);

    /// ███ Constructors ███████████████████████████████████████████████████████

    constructor() ERC721("Irukandji", "KANDJI") {}

    /// ███ Owner actions ██████████████████████████████████████████████████████

    /// @notice Set PUBLIC_SALE_SUPPLY value
    /// @dev Only owner can call this function
    function setPublicSaleSupply(uint256 newAmount) external onlyOwner {
        PUBLIC_SALE_SUPPLY = newAmount;
        emit PublicSaleSupplyUpdated(newAmount);
    }

    /// @notice Set PUBLIC_MINT_PRICE value
    /// @dev Only owner can call this function
    function setPublicMintPrice(uint256 newPrice) external onlyOwner {
        PUBLIC_MINT_PRICE = newPrice;
        emit PublicMaximumMintUpdated(newPrice);
    }

    /// @notice Set PUBLIC_MAX_MINT value
    /// @dev Only owner can call this function
    function setPublicMaxMint(uint256 newAmount) external onlyOwner {
        PUBLIC_MAX_MINT = newAmount;
        emit PublicMintPriceUpdated(newAmount);
    }

    /// @notice Set PUBLIC_SALE_TIMESTAMP value
    /// @dev Only owner can call this function
    function setPublicSaleTimestamp(uint256 newTimestamp) external onlyOwner {
        PUBLIC_SALE_TIMESTAMP = newTimestamp;
        emit PublicSaleTimestampUpdated(newTimestamp);
    }

    /// @notice Set WHITELIST_SUPPLY value
    /// @dev Only owner can call this function
    function setWhitelistSupply(uint256 newAmount) external onlyOwner {
        WHITELIST_SUPPLY = newAmount;
        emit WhitelistSupplyUpdated(newAmount);
    }

    /// @notice Set WHITELIST_MINT_PRICE value
    /// @dev Only owner can call this function
    function setPublicMintPrice(uint256 newPrice) external onlyOwner {
        PUBLIC_MINT_PRICE = newPrice;
        emit PublicMaximumMintUpdated(newPrice);
    }

    /// ███ User actions ███████████████████████████████████████████████████████
    function mintPublicSale(uint256 amount) external payable {}
}
