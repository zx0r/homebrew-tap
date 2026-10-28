class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.2/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "0ea10053f9dd0cf7845b312a066064db411a9fb54cb79779a7ec23d89e181ff1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.2/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "5edf973d035f9ac15a91784eb04915d54a97b18511eae0d727552f84d7880c14"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.2/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b2aa2ed818c36fde83d589a9754cf812c72069fcc27943a9e0da5eca89c14276"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
