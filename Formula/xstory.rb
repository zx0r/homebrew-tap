class Xstory < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xstory"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.1/xstory-aarch64-apple-darwin.tar.gz"
    sha256 "8fcc0e87a38c50601b8c6f032498be6ca4256c14636c71ad620078618f023433"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.1/xstory-x86_64-apple-darwin.tar.gz"
    sha256 "2d4a8f695b27b7eec089c862f2a2c974b2975efadb0a37d5e3222a973915f814"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.1/xstory-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9618b8e368f192172b0acc3683ec3902867435ffdca5411de6ab82dbbd89e35e"
  end

  license "MIT OR Apache-2.0"

  def install
    bin.install "xstory"
  end

  test do
    system "#{bin}/xstory", "--version"
  end
end
