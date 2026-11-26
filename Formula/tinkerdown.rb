# typed: false
# frozen_string_literal: true

class Tinkerdown < Formula
  desc "Turn markdown into apps"
  homepage "https://github.com/livetemplate/tinkerdown"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-arm64.tar.gz"
      sha256 "20683aa62ce62f2562d64d176811e2d62c8ba0401e5d30991aa870ddc969600e"
    end
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-darwin-amd64.tar.gz"
      sha256 "770c91506f197d173c7ebb5762706ea392fc2afa9772204e0ccd8c2963c19f79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/livetemplate/tinkerdown/releases/download/v#{version}/tinkerdown-linux-amd64.tar.gz"
      sha256 "42da9c6b5d45def8ad57b56e32dcaa3cf0a0f700f15f55b83fdc996910b8cac6"
    end
  end

  def install
    bin.install "tinkerdown"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tinkerdown version")
  end
end
