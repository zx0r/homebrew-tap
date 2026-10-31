class Xstory < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xstory"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.2/xstory-aarch64-apple-darwin.tar.gz"
    sha256 "400abf51775c8680e6727e1bdccf68f3d8f8a4e6f46d87758678025513840875"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.2/xstory-x86_64-apple-darwin.tar.gz"
    sha256 "2d1f77ec9035b23fc5f2a027ade0883e8d623aec4f510a8ae8a8adf261ac555b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.2/xstory-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6c00b1f13e36625f748fdc38116a6164839c0857c5d7c972f8dff6afc8f915ba"
  end

  license "MIT"

  def install
    bin.install "xstory"
  end

  test do
    system "#{bin}/xstory", "--version"
  end
end
