# 🤝 Decentralized Crowdfunding Platform

A **smart contract-based crowdfunding application** that allows anyone to create campaigns, contribute ETH, and withdraw money securely — all on the blockchain.  

This project demonstrates how **Ethereum + smart contracts** can remove middlemen and build trustless fundraising platforms.  

---

## 🚀 Features
- Create crowdfunding campaigns with target goals  
- Contribute ETH to active campaigns  
- Campaign creators can withdraw funds if the goal is met  
- Contributors can refund if the goal is not met  
- Transparent and decentralized fundraising  

---

## 🛠️ Tech Stack
- **Smart Contracts:** Solidity, Hardhat  
- **Blockchain Interaction:** Ethers.js  
- **Testing:** Mocha, Chai  
- **Deployment:** Hardhat scripts  

---

## 📂 Project Structure
```
Decentralized-crowdfunding/
├── contracts/           # Solidity smart contract (Crowdfunding.sol)
├── scripts/             # Deployment script (deploy.js)
├── test/                # Unit tests (Crowdfunding.js)
├── hardhat.config.js    # Hardhat configuration
└── package.json         # Dependencies
```

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

# Deploy to local network
npx hardhat node
npx hardhat run scripts/deploy.js --network localhost
```

---

## 🔮 Future Improvements
- Frontend integration with React (dApp UI)  
- Multi-token crowdfunding (ERC-20 contributions)  
- Cross-chain deployment (Polygon, BSC, Avalanche)  
- IPFS integration for campaign metadata  

---

## 📜 License
This project is licensed under the **MIT License**.  

---

✨ Built with ❤️ by [Oluwaseun Lawal](https://github.com/oluwaseunlawal552)
