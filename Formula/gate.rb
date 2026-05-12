class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.3"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.3/gate-0.6.3-aarch64-apple-darwin.tar.gz"
      sha256 "7b35a23a49eebf30cfebc87181d61a7ddd56d07c0177856bf084cb8366000e80"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.3/gate-0.6.3-x86_64-apple-darwin.tar.gz"
      sha256 "0b3915e94d4ef2d7d814ad4b1b1daf5c969f7581b62678559042a380f76f9a43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.3/gate-0.6.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c28247ebe6a1605c14622b74b0070e072678fe5d13d7e46e54fe8062719a4c9e"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.3/gate-0.6.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4773882445433a824f79edf0b2199006c6fbd49bf0203829aae2ba2f67a755f"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
