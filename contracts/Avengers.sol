// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract Avengers is ERC721A{

    address public owner;

    // Maximum number of NFT's that can be minted should be 5
    uint256 public maxQuantityOf_NFTs = 5;     

    string baseUrl = "https://gateway.pinata.cloud/ipfs/QmXvQrfXpkbG6MUVwQZEPx8uxNULewiLpG8XdQrciLzVFR/?_gl=1*18zypr8*_ga*MTk2NDQwNzQ4LjE2OTEzMjI5MzA.*_ga_5RMPXG14TE*MTY5MzAzNzE0My4yLjEuMTY5MzAzODIxMi42MC4wLjA.";    // Update accordingly

    
    string public prompt =
        "Create an AI  artwork for generating Avengers images ."; 
        // Prompt description used to generate the Ai images by leonardoAI

    constructor() ERC721A("Avengers", "AVN") {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner is allowed to perform this function");
        _;
    }

    function mint(uint256 amount) external payable onlyOwner{
        require(totalSupply() + amount <= maxQuantityOf_NFTs ,"You can not mint more than 5 NFTs");
        _mint(msg.sender, amount);
    }

    function _baseURI() internal view override returns (string memory){
        return baseUrl;
    }

    function promptDescription() external view returns (string memory) {
        return prompt;
    }
}