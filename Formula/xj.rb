class Xj < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/xj"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xj/releases/download/v0.1.0/xj-aarch64-apple-darwin.tar.gz"
    sha256 "a587c20be0877cae8a9027e4a7ee37d83c95dddf152a4ecdbb8cee64fba791e9"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xj/releases/download/v0.1.0/xj-x86_64-apple-darwin.tar.gz"
    sha256 "53ea90ed03c4af0747208919626a6de85804988ee1ee158a202323b6f0a7a98a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xj/releases/download/v0.1.0/xj-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e7caeca79b327e783a9377a5f953dd9c71d1ac7b1fab7a816f549faa81ff3abb"
  end

  license "MIT"

  def install
    bin.install "xj"
  end

  test do
    system "#{bin}/xj", "--version"
  end
end
