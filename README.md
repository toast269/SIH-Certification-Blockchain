# CertificateFactory Smart Contract

The CertificateFactory smart contract is a Solidity-based Ethereum contract that enables the creation and management of certificates. Each certificate has a unique ID and includes information about the creator, recipient, course name, and issue date.

## Features

- Create certificates with unique IDs.
- Associate certificates with both creators and recipients.
- Retrieve certificate details by ID.
- Check if a certificate with a specific ID exists.

## Getting Started

To deploy and interact with the CertificateFactory smart contract, you'll need:

- An Ethereum development environment (e.g., Remix, Truffle, or Hardhat).
- An Ethereum wallet to interact with the contract (e.g., MetaMask).

## Deployment

1. Deploy the CertificateFactory contract to your Ethereum development environment.
2. Use your Ethereum wallet to interact with the contract.

## Usage

### Create a Certificate

To create a new certificate, call the `createCertificate` function, providing the recipient's address and the course name as arguments. The certificate will be assigned a unique ID and stored in the contract.
