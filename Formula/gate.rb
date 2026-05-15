class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.7"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.7/gate-0.6.7-aarch64-apple-darwin.tar.gz"
      sha256 "086c5b989211156e2804b7711e5d0552dfafe6a12c5a2e5bf3a549f98b6af84d"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.7/gate-0.6.7-x86_64-apple-darwin.tar.gz"
      sha256 "b89f2e36db75a0409f0ed2b55f41e42b6d81287b6212a819f7d3ec2b3437b832"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.7/gate-0.6.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fab8dc1858625595cd4bc393065d2da8699c801fc4e9d659b83221772cf3f6b9"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.7/gate-0.6.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dd89d79c50a75a4916c0173de732fd30ffc180bfadc4792d9cba052affecac6"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
