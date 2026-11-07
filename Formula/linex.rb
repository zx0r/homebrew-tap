class Linex < Formula
  desc "Fast, zero-overhead terminal state widgets for tmux and status lines"
  homepage "https://github.com/zx0r/linex"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/zx0r/linex/releases/download/v0.1.2/linex-aarch64-apple-darwin.tar.gz"
      sha256 "19e78362187336192dc70ba65b6ea04811e6310156f55a635c5d8b74cb5e0e5d"
    end
    on_intel do
      url "https://github.com/zx0r/linex/releases/download/v0.1.2/linex-x86_64-apple-darwin.tar.gz"
      sha256 "b8e0534048ec31a4946c83f3d58e2f0422ce9287003482007282c391eb9168b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zx0r/linex/releases/download/v0.1.2/linex-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "feb2fab0a2f23f638369fa08591f0d991cb266268a9401d4e5ba865e54e99065"
    end
  end

  def install
    bin.install "linex"
  end

  test do
    assert_match "linex 0.1.2", shell_output("#{bin}/linex --version")
  end
end
