class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "3ba6a9be83c4b46a8258206d4f1792b98416b42209985f25dc7e182f71841902"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "eafefbc26ccf943a62d74969f15d7317fb1ee2ea2e6c9a638ed143cbb1106ec0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b9272961d10efc058ac2f314018dae376b86275375e2244e596f9e80bc93269b"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
