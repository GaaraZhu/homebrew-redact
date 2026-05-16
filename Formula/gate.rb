class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.8"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.8/gate-0.6.8-aarch64-apple-darwin.tar.gz"
      sha256 "493377e7d2296c17216f5b917b4c94c6ccbe752c9e1ee86537fb6fe5a5dd52e0"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.8/gate-0.6.8-x86_64-apple-darwin.tar.gz"
      sha256 "4c5f72fba132378c1a4b4df24a7a9dabbe774622ca1d14404ece00ae15400bf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.8/gate-0.6.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "530d0bf69b0639c7a99c5386016ca0f7ad75a3cd96d5bc51c2e5452daf57ba28"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.8/gate-0.6.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b3621cccd37d6ca500a10e586113d4f0b1f03f122d2189a4181799617c5241d"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
