class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "967bec4f9bc2d45de5e248224319b7003978e31130aec83ed6330cb6ab8773f5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "f9ffab9a3053e0a0eb6bca45f3be93af81a9c68b73aa8db57e9e402a0a22e31f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.1/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4df28e7c24a9238bbab453783eaa01dba7f7174aeca68d94d043c3e5e475b271"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
