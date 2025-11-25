# Motivator DApp

The Motivator DApp is a decentralized application designed to store motivational quotes permanently on the blockchain.  
Each quote is saved along with the wallet address of the user who submitted it, demonstrating transparency, immutability, and decentralization.

This project was built for academic demonstration to showcase how smart contracts interact with a web frontend and MetaMask using ethers.js.


## Features

- Connect MetaMask wallet from the browser
- Add motivational quotes to the blockchain
- Display all stored quotes with author wallet addresses
- Fetch and display a random quote
- Display total number of quotes stored
- Fully decentralized storage (no database, no backend server)

## Smart Contract Deployment Steps

1. Open Remix IDE in your browser:  
   https://remix.ethereum.org

2. Create a new file named `Motivator.sol` and paste the smart contract code.

3. Compile the contract using Solidity compiler version `0.8.20`.

4. Select "Deploy & Run Transactions" tab.

5. Connect MetaMask to Remix using the "Injected Provider" environment.

6. Choose the network (same as MetaMask test network).

7. Click **Deploy**.

8. Copy the deployed contract address for use in the frontend.



## Architecture Overview

| Layer | Technology | Purpose |
|-------|------------|---------|
| Blockchain | Ethereum Test Network | Permanent storage of quotes |
| Smart Contract | Solidity | Stores and manages quotes |
| Frontend | HTML, CSS, JavaScript | User interface |
| Wallet | MetaMask | Blockchain transaction authorisation |
| Blockchain Connection | Ethers.js | Communication layer between frontend and smart contract |


## How It Works

1. The user opens the application in a browser with MetaMask installed.
2. When "Connect Wallet" is clicked, the DApp connects to MetaMask using ethers.js.
3. When a quote is submitted, the DApp sends a blockchain transaction to store it.
4. The smart contract records the quote and the sender's wallet address permanently.
5. When the user loads or requests a random quote, the frontend retrieves stored data from the smart contract in real time.

## Running the Application Locally

1. Download or clone the repository.
2. Open the project folder.
3. Start a local web server (needed for MetaMask interaction):

   ```bash
   python -m http.server


Network: Hoodi Ethereum Test Network
Contract Address: 0x4B3C76DEac0B79EB0847a94d43C6B7DD09193468

