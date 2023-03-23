const { ethers } = require('ethers');
const ABI = require('./ABI.json');

const switchToken: string = '0xc0ecb8499d8da2771abcbf4091db7f65158f1468';

const holderAddress: string[] = [
    '0xb5d4f343412dc8efb6ff599d790074d0f1e8d430',
    '0x0020c5222a24e4a96b720c06b803fb8d34adc0af',
    '0xd1d8b2aae2ebb2acf013b803bc3c24ca1303a392',
];

const provider = new ethers.JsonRpcProvider("https://bsc-dataseed.binance.org/") //Calling an interface that talks to the smart contract

const contract = new ethers.Contract(switchToken, ABI, provider); //Creates a pointer to the contract

holderAddress.forEach(async (add) => {
    try{
        var bal = await contract.balanceOf(add); //Uses reference to find balance, ABi contains all the methods of the smart contract
        console.log(add, ethers.formatUnits(bal, 8));
    }catch(err){
        console.log(err);
    }
});
