class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.7"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.7/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "213195622b783653623ed54b9f5479d60aac13e6d55aac0f3731a66d4846e18d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.7/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "8c5869a7b3a8b18ac869fb619fcc1f4a194ba690b382c90076aaebec718314e4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.7/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9044fcd28fabdb983d260ac580156973f37e8eb0673d04e18872ef97e2bd42c1"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
