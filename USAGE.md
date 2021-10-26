# Using harmony-blockchain's Home Brew Cask TapHomebrew Cask


## Install Tap

```
# Tap the harmony-blockchain Homebrew
brew tap omhmichaels/harmony-homebrew

```

## Casks

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

## Frequently Used Commands

Homebrew Cask is implemented as part of Homebrew. All Homebrew Cask commands begin with `brew`.

**Brew Commands**
* `brew tap harmony-blockchain` - installs the Harmony One Homebrew Cask Tap *Maintainers at Harmony will need to fork to harmony organization repo*
* `brew install harmony-blockchain` — installs the given Cask
* `brew uninstall harmony-blockchain` — uninstalls the given Cask
* `brew reinstall harmony-blockchain` — reinstalls the given Cask


## Other Commands *begining with `brew`*
* `info` — displays information about the given Cask
* `fetch` — downloads remote application files for the given Cask to the local cache (with `--force`, re-download even if already cached)
* `--cache` — displays the path to Homebrew's local cache
* `doctor` — checks for configuration issues
* `style` — checks Cask style using RuboCop
* `home` — opens the homepage of the given Cask; or with no arguments, the Homebrew project page
* `uninstall --zap` — try to remove *all* files associated with a Cask (may include resources shared with other applications)
* `outdated` — lists all outdated Casks
* `upgrade` — updates all outdated Casks

The following commands are for Cask authors:

* `audit` — verifies installability of Casks
* `cat` — dumps the given Cask to the standard output
* `create --cask` — creates a Cask and opens it in an editor
* `edit` — edits the given Cask


## Updating/Upgrading Casks

Since the Homebrew Cask repository is a Homebrew Tap, you’ll pull down the latest Casks every time you issue the regular Homebrew command `brew update`. You can check for outdated Casks with `brew outdated` and install the outdated Casks with `brew upgrade`. Many applications update themselves, so their Casks are ignored by `brew outdated` and `brew upgrade`. This behaviour can be overridden by adding `--greedy` to the command.

## Updating/Upgrading the Homebrew Cask Tool

Homebrew [automatically taps and keeps Homebrew Cask updated](https://github.com/Homebrew/homebrew-cask/pull/15381). `brew update` is all that is required.


