# typed: false
# frozen_string_literal: true

class Tinkerdown < Formula
  desc "Turn markdown into apps"
  homepage "https://github.com/livetemplate/tinkerdown"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-arm64.tar.gz"
      sha256 "d3a1f8babeef9c20eecf418302efe37cdd84887367efe763b7214b51852a99c0"
    end
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-amd64.tar.gz"
      sha256 "c23a3225abd4362e8bfe02d88eca5ad2a217f5228fe56af52c9a0063df57fe28"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-linux-amd64.tar.gz"
      sha256 "4564b97bd9edc1565f0a2e0082151d38dabca221586b84635cb6d0f4a2d71f89"
    end
  end

  def install
    bin.install "tinkerdown"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinkerdown version")
  end
end
