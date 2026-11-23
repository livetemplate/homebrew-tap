# typed: false
# frozen_string_literal: true

class Tinkerdown < Formula
  desc "Turn markdown into apps"
  homepage "https://github.com/livetemplate/tinkerdown"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-arm64.tar.gz"
      sha256 "6727e15bb25c78bcc5f4b61bb60ffa83727bc861e42b8fc69cb58367ceaf9825"
    end
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-amd64.tar.gz"
      sha256 "02894fe4d5d348874ca8b886346046c31e67ecee9a8ad118f878a3f0f5133441"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-linux-amd64.tar.gz"
      sha256 "4b250780916cd51384d8ed391e939be1585c82ec9158410f9db558d23a2c7d63"
    end
  end

  def install
    bin.install "tinkerdown"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinkerdown version")
  end
end
