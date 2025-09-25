# 🤝 Decentralized Crowdfunding Platform

A **smart contract-based crowdfunding application** that allows anyone to create campaigns, contribute funds, and withdraw money securely — all on the blockchain.  

This project demonstrates how **Ethereum + smart contracts** can remove middlemen and build trustless fundraising platforms.  

---

## 🚀 Features
- Create crowdfunding campaigns with target goals  
- Contribute ETH to active campaigns  
- Campaign creators can withdraw funds if target is met  
- Contributors can request refunds if goals are not met  
- Transparent, decentralized, and trustless system  

---

## 🛠️ Tech Stack
- **Smart Contracts:** Solidity, Hardhat  
- **Frontend (optional):** React, Web3.js / Ethers.js  
- **Testing:** Mocha, Chai  
- **Deployment:** Hardhat, Infura/Alchemy  

---

## 📖 Smart Contract Functions
- `createCampaign(goal, duration)` → Start a new campaign  
- `contribute(campaignId)` → Send ETH to campaign  
- `withdraw(campaignId)` → Creator withdraws if goal is met  
- `refund(campaignId)` → Contributor refunds if goal not met  
- `getCampaigns()` → Fetch all campaigns  

---

## ⚙️ Installation & Setup
```bash
# Clone the repo
git clone https://github.com/oluwaseunlawal552/Decentralized-crowdfunding.git

# Navigate into project
cd Decentralized-crowdfunding

# Install dependencies
npm install

# Compile contracts
npx hardhat compile

# Run tests
npx hardhat test

# Deploy locally
npx hardhat node
npx hardhat run scripts/deploy.js --network localhost
```

---

## 📖 Project Structure
```
Decentralized-crowdfunding/
├── contracts/           # Solidity contracts
├── scripts/             # Deployment scripts
├── test/                # Unit tests
├── hardhat.config.js    # Hardhat configuration
└── package.json         # Dependencies
```

---

## 🔮 Future Improvements
- Add frontend dApp for easier campaign interaction  
- Support for multiple tokens (ERC-20 contributions)  
- Deploy to multiple blockchains (Polygon, BSC, Avalanche)  
- Integrate IPFS for campaign details storage  

---

## 📜 License
This project is licensed under the **MIT License**.  

---

✨ Built with ❤️ by [Oluwaseun Lawal](https://github.com/oluwaseunlawal552)
