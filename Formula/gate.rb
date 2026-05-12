class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.0/gate-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "b63e38318640e3954e4690136ec2404b427460928ce3c2c19349368724e7ffc5"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.0/gate-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "e74d70ff62785402ed83a70d9ca2c2336570e5c5e52e3e362c4dcf9cac089252"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.0/gate-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4fad2b6d6973d4fdc239e0379dba7fdab0c3ab7545c6a1225ae1f1f2fc5c670c"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.0/gate-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea8573e80d99e6f96ea182c02b310248abbab890612cfb50afc3d4e7b277c6c8"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
