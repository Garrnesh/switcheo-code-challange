const { ethers } = require("ethers");
const CreateContract = require("./build/contracts/CreateContract.json")

const ADDR = "…";   // your contract address
const ABI = CreateContract.abi;    // your contract ABI

const ADDRESS = "0xb5d4f343412dc8efb6ff599d790074d0f1e8d430"; // some wallet address with token balance
const TOKENS = [    // token contract addresses
	"0xc0ecb8499d8da2771abcbf4091db7f65158f1468",
];

// you can use your own RPC provider url (no need to deploy to mainnet)
const provider = ethers.providers.JsonRpcProvider("https://bsc-dataseed.binance.org/");

const test = async () => {
	const contract = new ethers.Contract(ADDR, ABI, provider);

  const balances = await contract.getBalances(ADDRESS, TOKENS);
	
	return balances;
};

test().then(console.log);