class Xstory < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xstory"
  version "0.1.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.5/xstory-aarch64-apple-darwin.tar.gz"
    sha256 "c48b189695bc004b621d9131d6bab022918a677c179a5884b09ed1167cdaaceb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.5/xstory-x86_64-apple-darwin.tar.gz"
    sha256 "53f8260022c19eec973df0e18e6474c9e86be01c84e55ded76e6b3608a1a1ed0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.5/xstory-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8b4abe896bf10c2f7dfb218e14dd327e18e2cac7f42543941f75dc0034e9c1ad"
  end

  license "MIT"

  def install
    bin.install "xstory"
  end

  test do
    system "#{bin}/xstory", "--version"
  end
end
