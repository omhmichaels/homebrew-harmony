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

  
    
    # TODO: Add sevice functionality
    #service do
    #  run [opt_bin/"foo"]
    #end
  end