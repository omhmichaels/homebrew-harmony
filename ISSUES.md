=begin

# KNOWN ISSUES:
- critical: no
- when: during test

- command: 
brew audit --strict harmony-one 

- error:
```
Warning: Treating Formula/harmony-one.rb as a formula.
harmony-one:
  * Libraries were compiled with a flat namespace.
    This can cause linker errors due to name collisions, and
    is often due to a bug in detecting the macOS version.
      /usr/local/Cellar/harmony-one/4.3.0/lib/libgmp.10.dylib
      /usr/local/Cellar/harmony-one/4.3.0/lib/libgmpxx.4.dylib
Error: 1 problem in 1 formula detected
```

- ARCH:

System Version: macOS 11.6 (20G165)
Kernel Version: Darwin 20.6.0

