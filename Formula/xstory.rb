class Xstory < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xstory"
  version "0.1.7"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.7/xstory-aarch64-apple-darwin.tar.gz"
    sha256 "e3440bc134dbbbd8b45cc70f82a4b6a2db2f03f7f2eacf76a408ad352c3f39b1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.7/xstory-x86_64-apple-darwin.tar.gz"
    sha256 "79d07936998187e3d74269491863ebf6cb69ea2c53013c56e9d623fe2f5f074d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.7/xstory-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b82b95303e2d481426f591b0af0a4d75fb60efface0b623cae1bd95b3dabccaa"
  end

  license "MIT"

  def install
    bin.install "xstory"
  end

  test do
    system "#{bin}/xstory", "--version"
  end
end
