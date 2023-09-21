// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CertificateFactory {
    // Struct to represent a certificate
    struct Certificate {
        uint256 certificateId; // Unique ID for the certificate
        address creator;       // Address of the certificate creator
        address recipient;     // Address of the certificate recipient
        string courseName;     // Name of the completed course
        uint256 issueDate;     // Timestamp when the certificate was issued
    }

    // Array to store all certificates
    Certificate[] public certificates;

    // Mapping from certificate ID to creator's address
    mapping(uint256 => address) public certificateToCreator;

    // Mapping from certificate ID to reciever's address
    mapping(uint256 => address) public certificateToReceiver;

    // Event to log when a new certificate is added
    event CertificateAdded(uint256 indexed certificateId, address indexed creator, address indexed recipient, string courseName, uint256 issueDate);

    // Function to create and store a new certificate
    function createCertificate(address _recipient, string memory _courseName) public {
        uint256 certificateId = certificates.length;
        uint256 issueDate = block.timestamp;  // Use current block timestamp as the issue date
        
        certificates.push(Certificate({
            certificateId: certificateId,
            creator: msg.sender,
            recipient: _recipient,
            courseName: _courseName,
            issueDate: issueDate
        }));
        
        certificateToCreator[certificateId] = msg.sender;
        certificateToReceiver[certificateId] = _recipient;
        
        emit CertificateAdded(certificateId, msg.sender, _recipient, _courseName, issueDate);
    }

    // Function to get the details of a certificate by its unique ID
    function getCertificateById(uint256 _certificateId) public view returns (address, address, string memory, uint256) {
        require(searchForCertificate(_certificateId), "Certificate with this ID does not exist");
        Certificate memory cert = certificates[_certificateId];
        return (cert.creator, cert.recipient, cert.courseName, cert.issueDate);
    }
    

    // Function to search if a certificate with given Id exists
    function searchForCertificate(uint _certificateId) public view returns(bool) {
        bool isPresent = false;
        for(int i=0; i<certificates.length; i++) {
            if i.certificateId == _certificateId {
                isPresent = true;
                break;
            } 
        }
        return isPresent;
    }
}

