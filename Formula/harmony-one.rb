class HarmonyOne < Formula
    desc "Harmony One Blockchain Node"
    homepage "https://github.com/harmony-one/harmony"
    # CONTRIBUTORS: Update the following (url, sha256)
    url "https://github.com/harmony-one/harmony/archive/refs/tags/v#{version}.tar.gz"
    sha256 "d463cd60973509f2a7e906582a09a7cd21cf3638b956f164c63e0536a2063367"
    license "LGPL-3.0-or-later"

    # CONTRIBUTORS: Versions may need to be updated according to documentation at:
    #    -  https://github.com/harmony-one/harmony 
    depends_on "go@1.16.3"
    depends_on "openssl@1.1" 
    depends_on "gmp"
    depends_on "make" 
    depends_on "jq"
    depends_on "bash" 

  
    # CONTRIBUTORS: Keep resources updated according to the changelog release tag:
    #     - https://github.com/harmony-one/harmony/releases/tag/v#{version}
    resource "bls" do
      url: "https://github.com/harmony-one/bls/archive/refs/tags/v0.0.6.tar.gz" :git
        
    end
  
    resource "mcl" do
      url: "https://github.com/harmony-one/mcl.git",
          version: ""
    end
  
    def install
      ENV.O0 if OS.linux?
      ENV.deparrellize
      #dir = buildpath/"src/github.com/harmony-one/harmony"
      #dir.install buildpath.children
  
      # Install Build Tools
      system "scripts/install_build_tools.sh"

      # Correct Directory Locations In Build Scripts
      # TODO: Switch to brew 'inreplace' formula method
      system "sed -i -e 's/openssl/openssl\@1\.1/g' Makefile"
      system "sed -i -e 's/openssl/openssl\@1\.1/g' scripts/go_executable_build.sh" 

      # Build Binarys
      system "go mod tidy"
      system "make "

      # Move Binaries and Libs to correct Install Locations
      bin.install "bin/harmony"
      bin.install "bin/bootnode"
      lib.install  Dir["bin/*dylib"] 

    end
    
    # TODO: Add sevice functionality
    #service do
    #  run [opt_bin/"foo"]
    #end
  end