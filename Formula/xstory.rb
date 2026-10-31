class Xstory < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xstory"
  version "0.1.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.3/xstory-aarch64-apple-darwin.tar.gz"
    sha256 "5499ba9f9010666fddf138a9b888223c498ed40fd7536ef0fa727c2b94dc0075"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.3/xstory-x86_64-apple-darwin.tar.gz"
    sha256 "932701ee2cd3f25e1df38ed48d2bc03cb9045dc0b27d4755718269c37e6e43e9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.3/xstory-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cac1e4f40f55423b626a411830980a683e4d7ff82fad80585cfc94d72739a4e9"
  end

  license "MIT"

  def install
    bin.install "xstory"
  end

  test do
    system "#{bin}/xstory", "--version"
  end
end
