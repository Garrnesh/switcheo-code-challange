import "./IERC20.sol";
pragma solidity >=0.4.22 <0.9.0;

contract CreateContract{
    struct Results {
        address token_address;
        uint256 balance;
    }

    function getBalances(address _walletAdd, address[] memory _tokenAdd) public view returns (Results[] memory){
        Results[] memory tokenAmt;
        for(uint256 i=0; i < _tokenAdd.length; i++){
            IERC20 tokenRef = IERC20(_tokenAdd[i]);
            uint256 tokenBal = tokenRef.balanceOf(_walletAdd);
            tokenAmt[i] = Results(_tokenAdd[i], tokenBal);
        }
        return tokenAmt;
    }
}

