class Linex < Formula
  desc "Zero-dependency, zero-allocation telemetry widgets"
  homepage "https://github.com/zx0r/linex"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/zx0r/linex/releases/download/v0.1.1/linex-aarch64-apple-darwin.tar.gz"
      sha256 "44768d92f27e6f11d8fe248a62748027e380772be0aeed87e5bec35d5ff6d552"
    end
    on_intel do
      url "https://github.com/zx0r/linex/releases/download/v0.1.1/linex-x86_64-apple-darwin.tar.gz"
      sha256 "da4d233999ac5710e3558951dbe1eb0c6d9c2b3491fc92d4bf8de3737ee8b2bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zx0r/linex/releases/download/v0.1.1/linex-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fe2d2cfd55f6819312d6c0b336d96a0d895aee819aa1ccae784061aa4fec0ed"
    end
  end

  def install
    bin.install "linex"
  end

  test do
    assert_match "linex 0.1.1", shell_output("#{bin}/linex --version")
  end
end
