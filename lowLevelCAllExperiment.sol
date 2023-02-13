// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Fallback {
    fallback() external payable {
    }
    function getETHBalance() external view returns(uint256){
        return address(this).balance; 
    }
}

contract SendToFallback {
    function sendETH(address payable _to) public payable {
        (bool success, ) = _to.call{value: msg.value}("");
        require(success, "Failed to send Ether");
    }
    function sendETHDifAdd(address payable _to1, address payable _to2) external payable {
        _to1.call{value: msg.value/2}("");
        (bool success1, ) = _to2.call{value: msg.value/2}("");
        require(success1, "to2 eth send fail");
    }
    function getETHBalance() external view returns(uint256){
        return address(this).balance; 
    }
}

contract contractWOfallback {
    function foo() public pure returns(string memory) {
        return "I love candy";
    }
    function getETHBalance() external view returns(uint256){
        return address(this).balance; 
    }
}
