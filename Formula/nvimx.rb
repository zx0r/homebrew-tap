class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "a1d19040c137d8b63d6d5f844fb6cc9c4e84698c534bd6983206cccfaac9620a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "f26d7e8d3ca7d38f9cc1caebb9fce62ddab764d818af51a592e502c837ae8912"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "73a431679da6cb3d36d9f17c9d1e5f8fd28be0a8504134775bc2137cd6f919c3"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
