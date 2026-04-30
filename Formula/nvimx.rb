class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "a9009165242f62295b585409573fbee4456577af1d619e12e37b6b90371ad923"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "df9b8452283838d542014a44463c434651707f06f53f93f6587d5dbe7fd166e1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c206d1e27c06cb77b10ccdb716b087241483bd29e1b777fc049df2c34bc4509f"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
