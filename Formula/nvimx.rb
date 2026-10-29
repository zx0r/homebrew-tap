class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.4/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "840386e9f4c0b6c5f5e7534f45d35d45de43f0c0470cf48d998685f31aa59f3a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.4/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "542e478cc8be938cc119958c2970419e350e3f3c53c478eba5f1c1cdfc5f31da"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.4/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e432defcb361e5072ee928516360f238a8e52bf2a9a485e6c545b73577fb2f8d"
  end

  license "MIT"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
