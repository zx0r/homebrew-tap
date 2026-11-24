class Ii < Formula
  desc "Terminal graphical coprocessor: math, diagrams and charts over the Kitty graphics protocol"
  homepage "https://github.com/zx0r/ii"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/zx0r/ii/releases/download/v0.1.0/ii-aarch64-apple-darwin.tar.gz"
      sha256 "f26c6c2f1e32324459a0b8ef6bc37337c11ae9f336842a92053b5c3ec9b4d787"
    end
    on_intel do
      url "https://github.com/zx0r/ii/releases/download/v0.1.0/ii-x86_64-apple-darwin.tar.gz"
      sha256 "8f5f67fa70828d4e479e1ef35e964b3b6582046e349d28f297c892aa936b48d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zx0r/ii/releases/download/v0.1.0/ii-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0b2022c65064936b802980321a8638596232eee9c3b0c33040a58c2bf90a63f"
    end
  end

  def install
    bin.install "ii"
  end

  test do
    assert_match "ii 0.1.0", shell_output("#{bin}/ii --version")
  end
end
