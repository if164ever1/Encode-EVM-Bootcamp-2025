// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 <0.9.0;

contract HelloWorld{
    string private text;

    constructor(){
        text = initialText();
    }

    function helloworld() public view returns (string memory){
        return text;
    }

    function setText(string memory newText) public {
        text = newText;
    }

    function initialText() internal pure returns(string memory) {
        return "Hello world";
    }

    function _isUnchanged() internal view returns (bool) {
        return keccak256(bytes(text)) == keccak256(bytes(initialText()));
    }

    function textHasChanged() public view returns (bool returnValue_) {
        returnValue_ = !_isUnchanged();
    }

    function _restore() internal {
        text = initialText();
    }

    function restore() public returns (bool){
        if (_isUnchanged()) return false;
        _restore();
        return true;
    }
}

contract InheritedHelloWorld is HelloWorld {
    constructor() { 
        setText("newText");
    }
}



 