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
