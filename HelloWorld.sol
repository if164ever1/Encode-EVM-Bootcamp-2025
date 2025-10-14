// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

contract HelloWorld{
    string private text;

    constructor(){
        text = "Hello world";
    }

    function helloworld() public view returns (string memory){
        return text;
    }

    function setText(string memory newText) public {
        text = newText;
    }
}



