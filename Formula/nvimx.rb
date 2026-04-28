class Nvimx < Formula
  desc "Fast and flexible Neovim profile manager"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-apple-darwin.tar.gz"
    sha256 "fa374e27799458eb3647c81de1232c28ac921cefb5bd7a8ebac5f9fb871f0bab"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-apple-darwin.tar.gz"
    sha256 "a7f25702f9db785623161d24c5dc4adc0ce964b7584ac0a5cd2b540f7048f248"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0ce49971a3ca9f241491006fc1e4763bfff577c1f727bda2fa88e930c0d618e7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/nvimx/releases/download/v0.1.0/nvimx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e74ff63ec5dba5ca6b770cea55351ad936dde9b5d61e910af869f02bb08a49db"
  end

  def install
    bin.install "nvimx"
  end

  test do
    system "#{bin}/nvimx", "--version"
  end
end
