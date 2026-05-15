class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.6"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.6/gate-0.6.6-aarch64-apple-darwin.tar.gz"
      sha256 "260fb98fa9516ed614aeed163741138105d7e7ef51ad417b5461c48abbbd9873"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.6/gate-0.6.6-x86_64-apple-darwin.tar.gz"
      sha256 "763a5b2201c7608c7eaed8f9cd976463a6932012265eb12c6186ad04861e5f76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.6/gate-0.6.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a636529d23c0c953dbbacfe9730f610feb3722db2ba6dbaa3c41aab0b34095ef"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.6/gate-0.6.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19a70ccb486ffadf5cbb267ae358e174a35f030260d498e2f9ee1ec80a3c786c"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
