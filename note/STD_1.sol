 pragma solidity ^0.5.0;

 contract STD_Function_public {
     uint public foo;
     function manyArgs(
         uint a1, uint a2, uint a3, uint a4, uint a5, uint a6, 
         uint a7, uint a8, uint a9, uint a10, uint a11, uint a12, 
         uint a13, uint a14, uint a15, uint a16, uint a17
         ) public {
             foo = a17;
     }
 }