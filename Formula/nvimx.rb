class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.5/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "dcd9a5e3798b74424f61904587b9b8ee09280dcfa93ee2f4cfdc63bf15ecaab0"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.5/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "17767dbaffa675cb2d85504d6fb4a7f4206a45e8e358149a95f50818955b1526"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.5/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6fa54d97d1b7c299dd6bedb09db377b863e1245869ab2e2fcae58058f6582c68"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
