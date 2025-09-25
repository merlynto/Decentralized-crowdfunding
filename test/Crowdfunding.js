// test/Crowdfunding.js
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Crowdfunding", function () {
  let Crowdfunding, crowdfunding, owner, addr1, addr2;

  beforeEach(async function () {
    [owner, addr1, addr2] = await ethers.getSigners();
    Crowdfunding = await ethers.getContractFactory("Crowdfunding");
    crowdfunding = await Crowdfunding.deploy();
    await crowdfunding.deployed();
  });

  it("Should create a new campaign", async function () {
    const goal = ethers.utils.parseEther("1");
    const duration = 60 * 60 * 24; // 1 day

    await crowdfunding.connect(addr1).createCampaign(goal, duration);

    const campaign = await crowdfunding.campaigns(0);
    expect(campaign.creator).to.equal(addr1.address);
    expect(campaign.goal).to.equal(goal);
  });

  it("Should accept contributions", async function () {
    const goal = ethers.utils.parseEther("1");
    const duration = 60 * 60 * 24; // 1 day

    await crowdfunding.createCampaign(goal, duration);

    await crowdfunding.connect(addr1).contribute(0, { value: ethers.utils.parseEther("0.5") });

    const campaign = await crowdfunding.campaigns(0);
    expect(campaign.amountRaised).to.equal(ethers.utils.parseEther("0.5"));
  });
});
