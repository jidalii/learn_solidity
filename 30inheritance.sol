// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/* Graph of inheritance
    E
   / \
  F   G
   \ /
    H

*/

contract E {
    event Log(string message);

    function foo() public virtual{
        emit Log("log.E");
    }
		function bar() public virtual{
        emit Log("bar.E");
    }
}

contract F is E {
    function foo() public virtual override{
        emit Log("log.F");
				E.foo();
    }
		function bar() public virtual override{
        emit Log("bar.F");
				super.bar();
    }
}
contract G is E {
    function foo() public virtual override{
        emit Log("log.G");
				E.foo();
    }
		function bar() public virtual override{
        emit Log("bar.G");
				super.bar();
    }
}
contract H is F, G {
    function foo() public virtual override(F, G){
        emit Log("log.H");
				F.foo();
    }
		function bar() public virtual override(F, G){
        emit Log("bar.H");
				super.bar();
    }
}