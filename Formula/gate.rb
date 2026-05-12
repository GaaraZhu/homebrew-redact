class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "42002281bb4896f12328cdc4bdeb56f060dfbf330e4798b2ba17f4c72991bb4e"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "eea6323b787276873a98cf84bcaee1e06d52dde4af34317f1704173105877c3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f6cea4d7e5697043bd99609a3c50268122446afe98d4d287b66e3baf9f5dfdd"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "755db22c61111a31885bc9d24d59d1b6603b9cbf19425ec4d48ba786c94dead3"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
