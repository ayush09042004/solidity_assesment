# Create a Token

This project demonstrates how to create a custom token on the Ethereum blockchain using Solidity, the primary programming language for smart contracts on Ethereum. The repository includes the Solidity source code, deployment scripts, and comprehensive instructions on how to set up and deploy your own token.
## Description

This final challenge involves creating a custom token with public variables for token details, address-to-balance mapping, and mint/burn functions with balance checks.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```solidity
contract MyToken {
uint public totatSupply=0;
string public tokenName="Bitcoin";
string public TokenAbbrv="Bit";
    // public variables here
mapping (address =>uint )public balance;
    // mapping variable here
function mint(address _address,uint _value) public {
totatSupply+=_value;
balance[_address] +=_value;
}
    // mint function
function burn(address _address,uint _value) public {
    if(totatSupply>=_value){
totatSupply-=_value;
balance[_address] -=_value;
}
}
    // burn function

}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can use the deployed contract interface in Remix to call functions like transfer, balanceOf, etc.
## Authors

Ayush Kumar Zindal 
[@Ayush kumar zindal](https://ayushzindal@gmail.com)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
