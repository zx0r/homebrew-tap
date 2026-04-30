class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "7f0462f69c3093b2087ad1551b9e518aa1e3517fb1a82751ba7403859abf6be2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "7ede3afcedbd60f139c8b9e71ac6b06c4691c85c75e029b3d27a1c7180aa21f5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6c4e1260f63e8033ce837304dfef9b48d2f0673d90c24a02b1409bd8fd6bd3c0"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
