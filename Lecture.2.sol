// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Lecture2 
{
uint8 public num; //state variable reserves space in memory
string public str;
bool public bul;
address public add;
address payable public owner;

constructor()
{
    owner = payable(msg.sender);
}


function setNum(uint8 _num, string memory _str, bool _bul, address _add) public   //access modifier-visible everywhere
{
    owner = payable (msg.sender);
    num = _num;
    str = _str;
    bul = _bul;
    add = _add;
}
function getNum() public view returns (uint8, string memory, bool, address)
{
    return (num, str, bul, add);
}
}