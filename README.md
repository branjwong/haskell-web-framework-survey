# haskell-web-framework-survey

A survey of Haskell web frameworks.

## Why Haskell?

Kris Jenkins - Communicating in Types
https://www.youtube.com/watch?v=R2afqbzWDiU

- FP is much better for reasoning about your code

Katie Miller - Haskell is Not For Production and Other Tales
https://www.youtube.com/watch?v=mlTO510zO78

- Facebook, Google, AT&T, Microsoft, New York Times, etc., are all using Haskell
- finding Haskell devs shouldn't be difficult for a half-mature startup -- there are lots of Haskellers looking for Haskell work, and they're usually very strong programmers

## Setting up Haskell on Windows

1. [install stack](https://www.haskell.org/downloads/#stack)
2. ensure stack is added to path
3. install GHC using Stack w/ `stack setup`

## How to run each project

`stack run ./app/Main.hs`

## How to add a package

1. set resolver to latest stable build https://www.stackage.org/snapshots
2. find a package to add on https://hackage.haskell.org/
3. go to package.yaml
4. find the _dependencies_ section
5. add a dependency
6. `stack build`
