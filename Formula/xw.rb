class Xw < Formula
  desc "Ultra fast widgets for tmux and status lines"
  homepage "https://github.com/zx0r/xw"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/zx0r/xw/releases/download/v0.1.0/xw-aarch64-apple-darwin.tar.gz"
      sha256 "82d3e6a0f9332632507803b4db4af5cc8d8dd117b6a81e681b0883a7692ad1ad"
    end
    on_intel do
      url "https://github.com/zx0r/xw/releases/download/v0.1.0/xw-x86_64-apple-darwin.tar.gz"
      sha256 "b30f3a235d4a49a0bb4eeef2b365d0452b6250a9695789cac27e952c90d2cdf3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zx0r/xw/releases/download/v0.1.0/xw-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6abd46aaa956507826eddee0a2ed116b6107565998013c1f91c8bf80b3d2770a"
    end
  end

  def install
    bin.install "xw"
  end

  test do
    assert_match "xw 0.1.0", shell_output("#{bin}/xw --version")
  end
end
