class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "caaaec1e17325d23ddf0815e56ababe1264e15c953223dbf134de8f0558283cf"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "de3fddd93ebb1c00f27229802089ca90339564dea25bea0fcee8d04c726f60a5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "d01205ff9bab08f33e597c54e392bd67ed0d4a7286ce2e1f359c41c34bcb4e18"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d0074b0a68c3b9a44536352c6a18006522970cfbf8135caeaacedbc3f2984242"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
