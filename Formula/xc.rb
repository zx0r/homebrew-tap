class Xc < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xc"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xc/releases/download/v0.1.1/xc-aarch64-apple-darwin.tar.gz"
    sha256 "d9f7b00927a281922451f5146d9258d8a145188e55b40f52ac4ce6db928b232c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xc/releases/download/v0.1.1/xc-x86_64-apple-darwin.tar.gz"
    sha256 "642956fcd20e698fa5cff3d67743ac69e16f50f9c4813ec7ee83c821de48a43f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xc/releases/download/v0.1.1/xc-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6f0aa7c5cfe18719f31b26433195589adca4c2f45ff1505c0a5de222a270073f"
  end

  license "MIT"

  def install
    bin.install "xc"
  end

  test do
    system "#{bin}/xc", "--version"
  end
end
