class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.4"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.4/gate-0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "a1419e324340bd0dc91e4ab523214d1ee2a5ad6637a03607b9080e4964361ca5"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.4/gate-0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "41dc3aa3ce7307804bb9d221bd3fd4a028993a3202f5f8470060a3d59afebb87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.4/gate-0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c139f425f81c8fb2c8e841f5d136c1d826214d509cae5a19c8543ee9caca7fd"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.4/gate-0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac362b8b67c667b2ad98a1a6e71f391cf3e146504b03a0ff5f1115dbbeabdce8"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
