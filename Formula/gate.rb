class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "26ba09fb9840a7acf392c3b683c61abfd3ac2ba1c43b16529b373dbbbd1a662a"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "d02444485ad795aea723f09b777384cd8cf5518803f7d369f354cc37fe9be318"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6049fa78cba60b9a5307d33263bcafcabacf6848234450ecfa1419ccf476fe0c"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "724e255f0fe09885ff8b0ef0dfd8fd6798d884f9e3125a60fd612692615734f3"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
