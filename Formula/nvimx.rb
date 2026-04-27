class Nvimx < Formula
  desc "A fast and flexible Neovim profile manager for running, isolating, and maintaining multiple configurations with ease"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-apple-darwin.tar.gz"
      sha256 "24d623e74c36f68ee63248bbcf85bf91607805215f127227147d243e638d7f48"
    end
    if Hardware::CPU.intel?
      url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-apple-darwin.tar.gz"
      sha256 "d8bfb203c7c7507309e744b6731cd99d78332a60390bca7f22ecb6f473ab5fa9"
    end
  end
  if OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a9b1bec85de141f6a5be9ec821b643c605ac7523c989f5b58fb249d82c3db7bb"
    end
    if Hardware::CPU.intel?
      url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "716b31493aaef8602c7eb49d7b3bb756a923f091bab10a5d59a4765b7ab84ee0"
    end
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":               {},
    "aarch64-unknown-linux-gnu":          {},
    "aarch64-unknown-linux-musl-dynamic": {},
    "aarch64-unknown-linux-musl-static":  {},
    "x86_64-apple-darwin":                {},
    "x86_64-unknown-linux-gnu":           {},
    "x86_64-unknown-linux-musl-dynamic":  {},
    "x86_64-unknown-linux-musl-static":   {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    bin.install "nvimx" if OS.mac? && Hardware::CPU.arm?
    bin.install "nvimx" if OS.mac? && Hardware::CPU.intel?
    bin.install "nvimx" if OS.linux? && Hardware::CPU.arm?
    bin.install "nvimx" if OS.linux? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
