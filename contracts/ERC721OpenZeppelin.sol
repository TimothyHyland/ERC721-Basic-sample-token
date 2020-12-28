pragma solidity ^0.7.3;

import '@openzepplin/contracts/token/ERC721/ERC721.sol';
  

////////////////  Basic ERC721 Deploy   No minted amount ///////  
contract ERC721OPenZeppelin1 is ERC721 {
        constructor() ERC721('tokenblah', 'TOKENSYMBOL') {}
}


///////////////////////   Basic ERC721    constructor minted amount at deploy only ///////////
 
contract ERC721OPenZeppelin2 is ERC721 {
        constructor() ERC721('tokenblah', 'TOKENSYMBOL') {}
        _safeMint(msg.sender, 0);
}


////////////////////////  ERC721 Deploy  with mint function locked to admin /////////////////////////
contract ERC721OPenZeppelin3 is ERC721 {
        address public admin;


        constructor() ERC721('tokenblah', 'TOKENSYMBOL') {
            admin = msg.sender;
        }

        function mint(address to, uint tokenId) external {
            require(msg.sender == admin, 'only admin');
            _safeMint(to, tokenId);
        }
}

////////////////////// Faucet Code //////////////////////

contract ERC721OPenZeppelin4 is ERC721 {                                    
        constructor() ERC721('tokenblah', 'TOKENSYMBOL') {}
        
        function faucet(address to , uint tokenId) external {
            _safeMint(to, tokenId);
        }
}
