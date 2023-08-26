# Avengers NFT Collection

![Avengers NFT Collection](https://gateway.pinata.cloud/ipfs/QmXvQrfXpkbG6MUVwQZEPx8uxNULewiLpG8XdQrciLzVFR/)

The Avengers NFT Collection is a project that mints AI-generated NFTs featuring unique Avengers-themed artwork. This contract deploys an ERC721A-based smart contract on the Ethereum Goerli Testnet, allowing users to mint their own NFTs and potentially trade them on the secondary market.

## Features

- Mint AI-generated Avengers NFTs with unique artwork.
- Set up a secondary market for trading or selling NFTs.
- Collect royalties from secondary market sales.

## Prerequisites

- [Truffle Suite](https://www.trufflesuite.com/truffle)
- Ethereum Goerli Testnet (for development and testing)
- [IPFS](https://ipfs.io/) for hosting NFT metadata and images

## IPFS Hosting with Pinata

This project uses IPFS for hosting NFT metadata and images. [Pinata](https://pinata.cloud/) is used as the IPFS service provider. You will need to create an account on Pinata, upload your NFT metadata and images, and use the generated IPFS URLs in the contract's `baseUrl` variable.

## Installation

1. Clone this repository: `git clone https://github.com/your-username/avengers-nft-collection.git`
2. Install dependencies: `npm install`

## Configuration

- Set the IPFS base URL in the `baseUrl` variable in the `Avengers.sol` contract.
- Customize the contract name, symbol, and maximum NFT quantity as needed.

## Usage

1. Deploy the contract to the Ethereum Goerli Testnet.
2. Mint NFTs using the `mint` function, specifying the number of NFTs to mint.
3. Use the `transferToken` function to transfer NFTs to other addresses.
4. Set royalty percentages for specific NFTs using the `setTokenRoyalty` function.

## Secondary Market and Trading

- Implement a marketplace or utilize existing NFT marketplaces to facilitate NFT trading.
- Use the `transferToken` function to transfer NFT ownership between addresses.

## Royalty Collection

- Artists and creators can receive royalties for their NFTs.
- The `setTokenRoyalty` function allows setting royalty percentages for individual NFTs.

## Credits

- Smart Contract Development: [Nitesh Choudhary](https://github.com/your-username)
- AI Artwork: [Leonardo AI](https://leonardo.ai/)
- IPFS Hosting: [Pinata](https://pinata.cloud/)

## License

This project is licensed under the [MIT License](LICENSE).
