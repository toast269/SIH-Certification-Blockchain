# Certificate Factory and Certificate Verifier Smart Contracts

This repository contains two Solidity-based Ethereum smart contracts: `CertificateFactory` and `CertificateVerifier`. These contracts work together to create, store, and verify certificates for course completion.

## CertificateFactory Smart Contract

The `CertificateFactory` contract allows you to:

- Create certificates, each with a unique ID.
- Store certificate details, including the creator, recipient, course name, and issue date.
- Retrieve certificate details by its unique ID.
- Check if a certificate with a given ID exists.

### Getting Started

1. Deploy the `CertificateFactory` contract to your Ethereum development environment.
2. Use an Ethereum wallet (e.g., MetaMask) to interact with the contract.

### Usage

#### Creating a Certificate

To create a new certificate, call the `createCertificate` function, providing the recipient's address and the course name as arguments. The certificate will be assigned a unique ID and stored in the contract.

````solidity
function createCertificate(address _recipient, string memory _courseName) public;```


````
