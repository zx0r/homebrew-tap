class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.2/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "0a6b7e5f3c67abd3fb977a7bf661b589307fd9c5f8eafa99c53de1548c26ef92"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.2/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "a23124938dbef234637b48fd1695117390d47f99e15651e44442040fbf79ef77"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.2/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2631b91a641662f47da116bf70c5042fd79e5fc1a51c8a8d9a9d4f6e904c22d6"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
