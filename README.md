# Harmony Homebrew Tap

*Harmony Blockchain Homebrew Tap*

## Overview
**Purpose**:
- Allow and support binary installation of official harmony versioned binaries using homebrew. Explained in detail under *History*
- Supplement and simplify the development proccess of harmony blockchain development on Homebrew supported devices.
- More about Official Homebrew Third Party Taps Here
    * [Homebrew Taps][https://docs.brew.sh/Taps]
    * [Maintaining a Homebrew Tap][https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap]


## History
 This repository was originally created for the Harmony Bounty here: 
- [https://github.com/harmony-blockchain/bounties/issues/69]

The bounty specifications ask for a Cask. The reasoning for this is believed to be the following:
- Harmony would like to have the package installed directly from thier stable binary releases of there code. 
- Harmony prefers this method over building from source
- Harmony believes binary installation is the best way to onboard people to Harmony Blockchain
- Simplifies installation dependencies compared to building from source. 

*The bounty also mention bottles but does not mention formulea.*


The completed cask was submitted to( Homebrew/homebrew-cask [https://github.com/Homebrew/homebrew-cask/pull/113134] but is unable to be pulled in favor of an open [pull request in homebrew/homebrew-core][https://github.com/Homebrew/homebrew-core/pull/87031] for a formula of the same name.


**Cask Pull Request**:[Homebrew/homebrew-cask][https://github.com/Homebrew/homebrew-cask/pull/113134]

**Formulea Pull Request**:[Homebrew/homebrew-core formulea pull request packaging both harmony node and cli] [https://github.com/Homebrew/homebrew-core/pull/87031]


## Current Casks
**harmony-blockchain**: 
* *Description*: Harmony Blockchain Node

* *Install*:
```
        # Be sure to tap the repository `omhmichaels/harmony-homebrew`. You can check your taps with `brew tap` 

        # Install Harmony blockchain
        brew install harmony-blockchain
```
* *Post Install*:
    - Verify the unsigned binary as well as each of the dylib libraries.  
    - After validation the following error will occcur:
    * ERROR when loading bls key: stat ./.hmy/blskeys: no such file or directory
    - Create a wallet and have its corresponding keys to fix issue
* *Test*:
```
# Grab the GOSDK Wrapper
curl -O https://raw.githubusercontent.com/harmony-one/go-sdk/master/scripts/hmy.sh

chmod u+x hmy.sh

./hmy.sh -d 

# Then create a wallet. Store your passphrase and mnemonic given in the output if you want to use your wallet again. 
/hmy.sh -- keys add account-name1 --passphrase 

# Then run your harmony-blockchain node
harmony 

```


### [Contributing](CONTRIBUTING.md)


- **From Homebrew Documentation**: 
    * [Maintaining a Homebrew Tap][https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap]
    * [Cask-Cookbook][https://docs.brew.sh/Cask-Cookbook]


### [Usage](./USAGE.md)
