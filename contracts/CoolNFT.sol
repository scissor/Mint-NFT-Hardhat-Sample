pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract CoolNFT is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("CoolNFT", "COOL") {
        console.log("This is cool NFT contract.");
    }

    function mint() public {
        uint256 newItemId = _tokenIds.current();
        _safeMint(msg.sender, newItemId);
        _setTokenURI(
            newItemId,
            "ipfs://Qmd5pJmeDL1JUoVaEuPyNNVKUVfKeXbw2R83mxbxjBMtz1"
        );
        _tokenIds.increment();
    }
}
