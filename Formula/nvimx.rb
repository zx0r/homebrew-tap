class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.3/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "e8e310291e27a761fc076e57d120412f4f0ae2eb8dfcb18414afd9b3090af1d5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.3/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "8140bbd03af28d53289f2cc64704a04afe7d71307c3103767425512a4835703f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.3/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eb8c6266c27d45f4eb8a53daa69fbce39640767d1df5b08261224d274ee7e56e"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
