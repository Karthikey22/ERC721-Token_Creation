// SPDX-License-Identifier: MIT
pragma solidity >=0.4.23 <0.9.0;

import "./ERC721Token.sol";
import "./Ownable.sol";

contract GradientToken is ERC721Token, Ownable{

    string public constant name = "GradientToken";
    string public constant symbol ="Grad";

    struct Gradient{
         string outer;
         string inner;

    }

    Gradient[] public gradients;

    function mint(string memory _outer, string memory _inner) public payable{
  
            Gradient memory _gradient = Gradient({outer: _outer , inner: _inner});
            gradients.push(_gradient);
            uint _gradientId = gradients.length -1;
            _mint(msg.sender, _gradientId);


    }


   function getGradient(uint _gradientId) public view returns(string memory outer, string memory inner){

              Gradient memory _grad = gradients[_gradientId];

              outer = _grad.outer;
              inner = _grad.inner;

   }

          


}