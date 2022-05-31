const deployAndMint = async () => {
    const nftContractFactory = await hre.ethers.getContractFactory('CoolNFT');
    const nftContract = await nftContractFactory.deploy();
    await nftContract.deployed();
    console.log("Contract deployed to:", nftContract.address);

    let txn = await nftContract.mint();
    await txn.wait();

    console.log("Minted Cool NFT #1");
};
  
const main = async () => {
    try {
        await deployAndMint();
        process.exit(0);
    } catch (error) {
        console.log(error);
        process.exit(1);
    }
};
  
main();

