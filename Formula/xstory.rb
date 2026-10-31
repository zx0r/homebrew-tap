class Xstory < Formula
  desc "Minimalist Unix shell history engine"
  homepage "https://github.com/zx0r/xstory"
  version "0.1.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.4/xstory-aarch64-apple-darwin.tar.gz"
    sha256 "fcabf1caa500c565df5e1f119cd01abb8dcce3fdc01939f7dc66a8e071209640"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.4/xstory-x86_64-apple-darwin.tar.gz"
    sha256 "01c07238150b364036cd1cfda251b55d09189e784687f77b422bebbee61fd318"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zx0r/xstory/releases/download/v0.1.4/xstory-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "20aab22e2085e68defb1210da074ccd6807ce16ce36765220f7a984fa78c83cb"
  end

  license "MIT"

  def install
    bin.install "xstory"
  end

  test do
    system "#{bin}/xstory", "--version"
  end
end
