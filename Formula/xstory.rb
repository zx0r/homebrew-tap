class Xstory < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xstory"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.1/xstory-aarch64-apple-darwin.tar.gz"
    sha256 "6ace60dad616d0ade59ad2c18f572bf9413458faf88ab66f342cfcda41c66770"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.1/xstory-x86_64-apple-darwin.tar.gz"
    sha256 "5dc993cd4efa9d7f8948a2618ec9b8105d9961cad6686addb357b11265092c27"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.1/xstory-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "52efe063775f0054df52b6e67fefa4ed1f82e2c34d1b1e81a700e18e7ea741dc"
  end

  license "MIT OR Apache-2.0"

  def install
    bin.install "xstory"
  end

  test do
    system "#{bin}/xstory", "--version"
  end
end
