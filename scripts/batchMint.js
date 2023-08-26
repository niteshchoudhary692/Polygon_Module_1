const { ethers } = require("hardhat");
require("dotenv").config();

async function main() {
  
  const privateKey = process.env.PRIVATE_KEY;

  const networkAddress = "https://eth-goerli.g.alchemy.com/v2/VIkC6xwUWz8l0z78bXGoCkXUjiGGmz52"; // Update accordingly

  const provider = new ethers.providers.JsonRpcProvider(networkAddress);

  const signer = new ethers.Wallet(privateKey, provider);

  const contractAddress = "0xaADC2b79235787506AbBeCb9B11e90583aaE1912";  //Update the deployement address here

  const Avengers = await ethers.getContractFactory("Avengers", signer);
  const contract = await Avengers.attach(contractAddress);

  await contract.mint(5);

  console.log("Minted 5 Avengers's NFTs");
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
