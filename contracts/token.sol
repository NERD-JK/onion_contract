
// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// import "@openzeppelin/contracts/access/Ownable.sol";
pragma solidity ^0.8.0;

import "contracts/parents.sol";

contract Token is ERC20, Ownable {
    uint8 private _decimals;

    constructor() ERC20("ONIONCOIN", "ONO") {
        _decimals = 18;
        _mint(msg.sender, 3000000000 * 10 ** decimals());
    }

    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }
}
