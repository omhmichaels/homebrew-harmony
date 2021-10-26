# Harmony Homebrew Tap

*Harmony homebrew tap repository*

## Overview
**Purpose**:
- Allow and support binary installation of official harmony versioned binaries using homebrew. Explained in detail under *History*
- Supplement and simplify the development proccess of harmony blockchain development on Homebrew supported devices.
- Act as a stage or sandbox for Harmony's development of future Homebrew packages

## History
 This repository was originally created for the Harmony Bounty here: 
- https://github.com/harmony-blockchain/bounties/issues/69

The bounty specifications ask for a Cask. The reasoning for this is believed to be the following:
- Harmony would like to have the package installed directly from thier stable binary releases of there code. 
- Harmony prefers this method over building from source
- Harmony believes binary installation is the best way to onboard people to Harmony Blockchain
- Simplifies installation dependencies compared to building from source. 

*The bounty also mention bottles but does not mention formulea.*


The completed cask was submitted to( Homebrew/homebrew-cask )[https://github.com/Homebrew/homebrew-cask/pull/113134] but is unable to be pulled in favor of an open (pull request in homebrew/homebrew-core)[https://github.com/Homebrew/homebrew-core/pull/87031] for a formula of the same name.


**Pull Request**:(Homebrew/homebrew-cask)[https://github.com/Homebrew/homebrew-cask/pull/113134]
**Pull Request**:(Homebrew/homebrew-core formulea pull request packaging both harmony node and cli) [https://github.com/Homebrew/homebrew-core/pull/87031]

### Current Casks


### (Contributing)[CONTRIBUTING.md]


### (Usage)[./USAGE.md] 

## Reasoning for creating an official harmony one tap
"Homebrew’s versions should not be used to “pin” formulae to your personal requirements. You should instead create your own tap for formulae you or your organisation wish to control the versioning of, or those that do not meet the above standards. Software that has regular API or ABI breaking releases still needs to meet all the above requirements; that a brew upgrade has broken something for you is not an argument for us to add and maintain a formula for you."

https://docs.brew.sh/Versions

### Other Resources for Future Development
https://docs.brew.sh/Acceptable-Formulae