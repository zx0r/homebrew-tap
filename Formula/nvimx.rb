class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.6/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "1048aa22f962027d28e0304675f02502ac2fcf4f148038e504ec5ded2e4ab76c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.6/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "28cdc22a5092a584d82c94f125d3c8cf866448b7974a360cd0079f7843b53c97"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.6/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "10f8e11a302c722595b20ea5fc467c9dae7908eb61aed3becfb168c766cc48a4"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
