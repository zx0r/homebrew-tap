class Xc < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xc"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xc/releases/download/v0.1.0/xc-aarch64-apple-darwin.tar.gz"
    sha256 "36fc6413f0d1f0f3a80b9f928c91c331ecf4f8639bf3e4723897c777696e6509"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xc/releases/download/v0.1.0/xc-x86_64-apple-darwin.tar.gz"
    sha256 "beeb72fdeeae2445e1ea41d51a5c34165b2dd4af45ae4194250db3c6d35d4db1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xc/releases/download/v0.1.0/xc-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "22c2a218dc180a927563a42772787062ebdda34c20e72d70d4bb63289d50fe7e"
  end

  license "MIT"

  def install
    bin.install "xc"
  end

  test do
    system "#{bin}/xc", "--version"
  end
end
