class HarmonyOne < Formula
    desc "Harmony One Blockchain Node"
    homepage "https://github.com/harmony-one/harmony"
    # CONTRIBUTORS: Update the following (url, sha256)
    url "https://github.com/harmony-one/harmony/releases/download/v4.3.0/harmony-macos-4.3.0.zip"
    sha256 "a8fd1a63f46886d51605c71fef15a7dabe5509dd35ce71ce5df2cc9ccad7860d"
    license "LGPL-3.0-or-later"

    def install
      system "echo", "$(pwd)"
      # Move Binaries and Libs to correct Install Locations
      bin.install "harmony"
      lib.install  Dir["*dylib"] 

    end
    
    # TODO: Add sevice functionality
    #service do
    #  run [opt_bin/"foo"]
    #end
  end