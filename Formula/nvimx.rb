class Nvimx < Formula
  desc "A fast and flexible Neovim profile manager for running, isolating, and maintaining multiple configurations with ease"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-apple-darwin.tar.xz"
    sha256 "b877f42d9fe99e6dbb2f4327e98e66cceda1eeb25b27b317ef23c364c8cb74c8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-apple-darwin.tar.xz"
    sha256 "9cd35f1b79b6c028d7516d5c59285b43608f454dc6c468acfe3576231f5b2c18"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "cd41b541d762490029baac4f5f2eec9c090bf88849269c81439fc021a3b3378b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "b71c08dc1808f2a59bffd9fbf937cff0c534772995a16baf703b8a989134cc59"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
