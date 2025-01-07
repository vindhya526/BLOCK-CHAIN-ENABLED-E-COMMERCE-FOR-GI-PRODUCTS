// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QRCode {
    struct Product {
    uint256 id;
    string name;
    uint256 price;
    string specifications;
    }
    
    mapping(uint256 => Product) public products;
    
    function generateQRCode(uint256 _id, string memory _name, uint256 _price, string memory _specifications) public {
        products[_id] = Product(_id, _name, _price, _specifications);
    }
}
