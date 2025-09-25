// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Crowdfunding {
    struct Campaign {
        address payable creator;
        uint goal;
        uint deadline;
        uint amountRaised;
        bool withdrawn;
        mapping(address => uint) contributions;
    }

    Campaign[] public campaigns;

    event CampaignCreated(uint campaignId, address creator, uint goal, uint deadline);
    event Contributed(uint campaignId, address contributor, uint amount);
    event Withdrawn(uint campaignId, uint amount);
    event Refunded(uint campaignId, address contributor, uint amount);

    function createCampaign(uint _goal, uint _duration) external {
        Campaign storage newCampaign = campaigns.push();
        newCampaign.creator = payable(msg.sender);
        newCampaign.goal = _goal;
        newCampaign.deadline = block.timestamp + _duration;
        emit CampaignCreated(campaigns.length - 1, msg.sender, _goal, newCampaign.deadline);
    }

    function contribute(uint _campaignId) external payable {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp < campaign.deadline, "Campaign ended");
        campaign.amountRaised += msg.value;
        campaign.contributions[msg.sender] += msg.value;
        emit Contributed(_campaignId, msg.sender, msg.value);
    }

    function withdraw(uint _campaignId) external {
        Campaign storage campaign = campaigns[_campaignId];
        require(msg.sender == campaign.creator, "Only creator");
        require(block.timestamp >= campaign.deadline, "Not ended");
        require(campaign.amountRaised >= campaign.goal, "Goal not reached");
        require(!campaign.withdrawn, "Already withdrawn");

        campaign.withdrawn = true;
        campaign.creator.transfer(campaign.amountRaised);
        emit Withdrawn(_campaignId, campaign.amountRaised);
    }

    function refund(uint _campaignId) external {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp >= campaign.deadline, "Not ended");
        require(campaign.amountRaised < campaign.goal, "Goal was met");

        uint contribution = campaign.contributions[msg.sender];
        require(contribution > 0, "No contribution");

        campaign.contributions[msg.sender] = 0;
        payable(msg.sender).transfer(contribution);
        emit Refunded(_campaignId, msg.sender, contribution);
    }
}
