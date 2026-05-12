class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "e98e802dbe7672cad8994ad79bc267f86dd2e515474417b60f2a8f3a9d7eb192"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "312e0c6e5e76da875b9f579fb05fb99a4da4fc601a3d2ec7a3a811ef90e6b512"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73c139940c37512745424e6347afc51509175fb0c40a06b3a4de65ffa8851ebf"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.1/gate-0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbda000e41cfaef5c3e4adc35818340007e22fa1dfa87bf976fc4e41768d13d1"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
