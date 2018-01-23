pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract RussianAnimationStudio is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function RussianAnimationStudio(address _owner)  UpgradeableToken(_owner) {
    name = "RussianAnimationStudio";
    symbol = "RAS";
    totalSupply = 150000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}