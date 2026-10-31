class Xstory < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xstory"
  version "0.1.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.6/xstory-aarch64-apple-darwin.tar.gz"
    sha256 "fe81e8a7c4cd906a6b4fd80fa39ef32a507b0fa5c11150e5f0c580f503857e63"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.6/xstory-x86_64-apple-darwin.tar.gz"
    sha256 "bf14b0ea941541dbdf8f2eb99aa8a63c42628dba383010fb986f1764fbbe1854"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.6/xstory-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c3ca739d3e4bad9d2abb16ed45a2fe2d51640d1666131088a4557eda32a3ab5f"
  end

  license "MIT"

  def install
    bin.install "xstory"
  end

  test do
    system "#{bin}/xstory", "--version"
  end
end
