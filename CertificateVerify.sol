// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./CertificateFactory.sol"; // Import the CertificateFactory contract

contract CertificateVerifier {
    CertificateFactory public certificateFactory; // Reference to the CertificateFactory contract

    constructor(address _certificateFactoryAddress) {
        certificateFactory = CertificateFactory(_certificateFactoryAddress);
    }

    // Function to verify if a certificate exists based on certificate ID
    function verifyCertificateById(uint256 _certificateId) public view returns (bool) {
        address creator;
        address recipient;
        (creator, recipient, , ) = certificateFactory.getCertificateById(_certificateId);
        return (creator != address(0) && recipient != address(0));
    }

    // Function to verify if a certificate exists based on recipient's address
    function verifyCertificateByRecipient(address _recipient) public view returns (bool) {
        uint256 totalCertificates = certificateFactory.getTotalCertificates();
        for (uint256 i = 0; i < totalCertificates; i++) {
            (, address recipient, , ) = certificateFactory.getCertificateById(i);
            if (recipient == _recipient) {
                return true;
            }
        }
        return false;
    }
}
