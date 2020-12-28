pragma solidity ^0.7.3;

import '@openzeppelin/contracts/token/ERC721/IERC721Holder.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721.sol';

contractA is ERC721Holder {
    IERC7231 public token;
    ContractB public contractB;

    constructor(address _token) {
        token = IERC721(_token);
        contractB = ContractB(_contractB)
    }


//////// approve must be called before this call /////////////////
    function deposit(uint tokenId) external {
        token.safeTransferFrom(msg.sender, address(this) , tokenId);
        token.approve(address(contractB), tokenId)
        contractB.deposit(tokenId);
    }

    function withdraw(uint tokenId) external {
        contractB.withdraw(tokenId)
        token.safeTransferFrom(address(this), msg.sender, tokenId);

    }
}