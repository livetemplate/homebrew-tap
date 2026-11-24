# typed: false
# frozen_string_literal: true

class Tinkerdown < Formula
  desc "Turn markdown into apps"
  homepage "https://github.com/livetemplate/tinkerdown"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-arm64.tar.gz"
      sha256 "14bc7e6184cb6acc9599fd1db5e9cc137f6a9cc0a0f5c11dd48e0aedc251d4cb"
    end
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-amd64.tar.gz"
      sha256 "fc34e6fd7bfac8b4553971f30747bdca524202fd03c35a8ec29482344edc4bfb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-linux-amd64.tar.gz"
      sha256 "5073052343d45bbba282e7376c241a4c02d41229c47ac701c80d64594d0e4b40"
    end
  end

  def install
    bin.install "tinkerdown"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinkerdown version")
  end
end
