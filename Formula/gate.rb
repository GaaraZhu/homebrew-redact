class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.5"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.5/gate-0.6.5-aarch64-apple-darwin.tar.gz"
      sha256 "5e1a164547ad3eaf03ebb0f68818f85d7305f3672ce6d1fdc38245b401a28ec3"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.5/gate-0.6.5-x86_64-apple-darwin.tar.gz"
      sha256 "0eaecfc05f1d827ce6e5882556777151ef99e15fc72a41f063c490241999ff4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.5/gate-0.6.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f262daa49b629a83bec5b9262313c5528f640b845bb56f687f77725f22ae22d"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.5/gate-0.6.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b8cdfe02b5e4a47c44ce441c4a0c4c3c3250fc43d3bf5d700e856bf1882d8e5"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
