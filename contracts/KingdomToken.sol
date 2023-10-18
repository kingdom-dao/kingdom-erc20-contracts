// SPDX-License-Identifier: MIT
/*
 __  __     __     __   __     ______     _____     ______     __    __ 
/\ \/ /    /\ \   /\ "-.\ \   /\  ___\   /\  __-.  /\  __ \   /\ "-./  \ 
\ \  _"-.  \ \ \  \ \ \-.  \  \ \ \__ \  \ \ \/\ \ \ \ \/\ \  \ \ \-./\ \
 \ \_\ \_\  \ \_\  \ \_\\"\_\  \ \_____\  \ \____-  \ \_____\  \ \_\ \ \_\
  \/_/\/_/   \/_/   \/_/ \/_/   \/_____/   \/____/   \/_____/   \/_/  \/_/
 ______    ______     __  __     ______     __   __ 
/\__  _\  /\  __ \   /\ \/ /    /\  ___\   /\ "-.\ \
\/_/\ \/  \ \ \/\ \  \ \  _"-.  \ \  __\   \ \ \-.  \
   \ \_\   \ \_____\  \ \_\ \_\  \ \_____\  \ \_\\"\_\
    \/_/    \/_____/   \/_/\/_/   \/_____/   \/_/ \/_/

=> KINGDOM protocol redefines equitable blockchain resource distribution.
*/
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title KingdomToken
/// @notice ERC20 token with burn function
contract KingdomToken is ERC20, ERC20Burnable, Ownable {
    // state vars
    uint256 private _totalSupply;

    // *************************************************************************
    // FUNCTIONS

    constructor()
        ERC20("Kingdom Token", "KT")
        Ownable(msg.sender)
    {
        _totalSupply = 1000*10**6 * 10**18;
        mint(msg.sender, _totalSupply);
    }

    // *************************************************************************
    // MINING FUNCTIONS

    /// @notice This function allows for the minting of ERC20 tokens.
    /// @dev Can only be called by the current owner of the contract.
    /// @param to The address that will receive the minted tokens.
    /// @param amount The number of tokens to mint.
    function mint(
        address to,
        uint256 amount
    )
        public
        onlyOwner
    {
        _mint(to, amount);
    }
}
