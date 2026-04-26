# frozen_string_literal: true

class Nvimx < Formula
  desc "Neovim profile manager — switch configs instantly"
  homepage "https://github.com/zx0r/nvimx"
  license "MIT"

  # This formula is automatically updated by cargo-dist.
  # Manual changes will be overwritten during the next release.

  head "https://github.com/zx0r/nvimx.git", branch: "main"

  stable do
    version "0.1.0"
    url "https://github.com/zx0r/nvimx/archive/refs/tags/v0.1.0.tar.gz"
    sha256 :no_check # Initial placeholder
  end

  depends_on "neovim"

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
