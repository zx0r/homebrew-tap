# typed: strict
# frozen_string_literal: true

class Nvimx < Formula
  desc "Neovim profile manager — switch configs, plugins, and settings instantly"
  homepage "https://github.com/zx0r/nvimx"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  stable do
    on_macos do
      if Hardware::CPU.arm?
        url "URL_MAC_ARM"
        sha256 "SHA_MAC_ARM"
      else
        url "URL_MAC_X86"
        sha256 "SHA_MAC_X86"
      end
    end
    on_linux do
      if Hardware::CPU.arm?
        url "URL_LINUX_ARM"
        sha256 "SHA_LINUX_ARM"
      else
        url "URL_LINUX_X86"
        sha256 "SHA_LINUX_X86"
      end
    end
  end

  head "https://github.com/zx0r/nvimx.git", branch: "main"

  depends_on "neovim" => :recommended
  depends_on "git" => :optional
  conflicts_with "nvim-profiles", because: "both install nvim profile managers"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "nvimx"
    chmod 0755, bin/"nvimx"
    bash_completion.install "completions/nvimx.bash" => "nvimx" if (buildpath/"completions/nvimx.bash").exist?
    zsh_completion.install "completions/nvimx.zsh" => "_nvimx" if (buildpath/"completions/nvimx.zsh").exist?
    fish_completion.install "completions/nvimx.fish" if (buildpath/"completions/nvimx.fish").exist?
    man1.install "docs/nvimx.1" if (buildpath/"docs/nvimx.1").exist?
  end

  test do
    assert_match "nvimx #{version}", shell_output("#{bin}/nvimx --version")
    assert_match "Usage:", shell_output("#{bin}/nvimx --help")
    assert_predicate bin/"nvimx", :executable?
    refute_match "permission denied", shell_output("#{bin}/nvimx list 2>&1")
  end

  def caveats
    <<~EOS
      nvimx installed successfully!

      Quick start:
        1. Run: nvimx init
        2. List profiles: nvimx list
        3. Switch profile: nvimx use <name>

      Shell completions:
        - Bash: source #{HOMEBREW_PREFIX}/etc/bash_completion.d/nvimx
        - Zsh:  echo 'fpath+=#{HOMEBREW_PREFIX}/share/zsh/site-functions' >> ~/.zshrc
        - Fish: mkdir -p ~/.config/fish/completions && cp #{opt_share}/fish/completions/nvimx.fish ~/.config/fish/completions/

      Docs: man nvimx
      Source: #{homepage}
      Issues: #{homepage}/issues
    EOS
  end
end
