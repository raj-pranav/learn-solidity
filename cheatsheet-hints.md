## Choosing a `License` Identifier
`Note` - The Solidity compiler encourages the use of machine-readable `SPDX license identifiers`. Every source file should start with a comment indicating its license:<br>
**examples**<br>
// SPDX license identifiers: `GPL-3.0` <br>
// SPDX license identifiers: `MIT` <br>
// SPDX license identifiers: `UNLICENSED` <br>

## Choosing solidity `compiler` version
- [x] **pragma solidity** `>x.y.z <= p.q.r`; -> *works with version atleast `x.y.z` and at at max till `p.q.r`*
- [x] **pragma solidity** `^x.y.z`; -> *works for any major version corresponding y i.e. starting from `x.y.z` but below `x.y+1.z`*
- [x] **pragma solidity** `0.8.0`; -> *works for the specific version as mentioned :) It is a bad practice though*

`Note` -> Using the version pragma does not change the version of the compiler. It also does not enable or disable features of the compiler. It just instructs the compiler to check whether its version matches the one required by the pragma. If it does not match, the compiler issues an error.
## Type of `Comments` in solidity
- [x] Single Line Comment
  - `//`
- [x] Multi-line comments
   - `/*` write anything in between <br>
        ... second line <br>
        .... third line <br>
        ................. <br>
        `*/`
