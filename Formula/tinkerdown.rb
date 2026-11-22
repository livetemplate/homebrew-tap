# typed: false
# frozen_string_literal: true

class Tinkerdown < Formula
  desc "Turn markdown into apps"
  homepage "https://github.com/livetemplate/tinkerdown"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-arm64.tar.gz"
      sha256 "5effbc2364f03d1424baa200a76ba041a3f46c86aaa7a140bc9061ed84ef0507"
    end
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-amd64.tar.gz"
      sha256 "6bdbf425857f2486d07cd51903e25712451a23d73300f82e07487f75321925a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-linux-amd64.tar.gz"
      sha256 "feff41be7023599a71dc7dc00360572a09bd0b5e86524223545f1d04529c491a"
    end
  end

  def install
    bin.install "tinkerdown"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinkerdown version")
  end
end
