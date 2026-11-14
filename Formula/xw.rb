class Xw < Formula
  desc "Ultra fast widgets for tmux and status lines"
  homepage "https://github.com/zx0r/xw"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/zx0r/xw/releases/download/v0.1.0/xw-aarch64-apple-darwin.tar.gz"
      sha256 "bd613f6959b04f5d1bf1fc75a67c2138034a2f3e8ce3a2baab827af71bb28a11"
    end
    on_intel do
      url "https://github.com/zx0r/xw/releases/download/v0.1.0/xw-x86_64-apple-darwin.tar.gz"
      sha256 "8ec1acb0e781c055d808bd9025d10255ceec3ca78f1eb7b9cf92cd55a1bbf14b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zx0r/xw/releases/download/v0.1.0/xw-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6226c5054893a1bacdbfef8c52629b69cafa44d265fc771cfbebd5b6c070b402"
    end
  end

  def install
    bin.install "xw"
  end

  test do
    assert_match "xw 0.1.0", shell_output("#{bin}/xw --version")
  end
end
