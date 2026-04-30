class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "94ab7ef793e4378caf9eefc3f16595899e73765a6c6ea980fe3526f7e895fef1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "54242ea24ee2daad3220acf87ede82de4cf0a94a2e485584fc4ada892d4fb50c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d2907e2c3c3613d3d8db8bbafca1ecd44598c609257756612f03d8ed537b8a0d"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
