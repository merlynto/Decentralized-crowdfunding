// scripts/deploy.js
const hre = require("hardhat");

async function main() {
  // Get the contract factory
  const Crowdfunding = await hre.ethers.getContractFactory("Crowdfunding");

  // Deploy the contract
  const crowdfunding = await Crowdfunding.deploy();

  // Wait for deployment
  await crowdfunding.deployed();

  console.log(`Crowdfunding contract deployed to: ${crowdfunding.address}`);
}

// Run the script
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
