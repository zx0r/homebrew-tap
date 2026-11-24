class Ii < Formula
  desc "Terminal graphical coprocessor: math, diagrams and charts over the Kitty graphics protocol"
  homepage "https://github.com/zx0r/ii"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    on_arm do
      url "https://github.com/zx0r/ii/releases/download/v0.1.0/ii-aarch64-apple-darwin.tar.gz"
      sha256 "4f0f4a3f93f6d8935455f33930648f3459f19dbcc73eb7a2a4759f4a3eb54ac8"
    end
    on_intel do
      url "https://github.com/zx0r/ii/releases/download/v0.1.0/ii-x86_64-apple-darwin.tar.gz"
      sha256 "daaec15646862d0d2dfabc7b692b9cdd764e88d5dce9aebbdee4f92fe6aaa363"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/zx0r/ii/releases/download/v0.1.0/ii-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1199b57d1368915cb5adf20b5cfb958de64e5d0aace12746b140696cf9ccf97"
    end
  end

  def install
    bin.install "ii"
  end

  test do
    assert_match "ii 0.1.0", shell_output("#{bin}/ii --version")
  end
end
