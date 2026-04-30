class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "9c94653ee0a818b5b87c7701e7420b1b630e072f73a1af16f4d830c802b1d5a7"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "274eef928c1816c0a09627427707c31e8f472e892f1db788b404617d02997ba4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ec31cf0dd28d56d6efbf088519d7fc69f7c48c8838e6a221a93d46af454e53b7"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
