class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.2/gate-0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "e2faba812e796581c6778b88a05f8888161c96cb3f105293de6212e910e610d8"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.2/gate-0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "f1723cf17d0ec231f83dd527b0a49e80a10297946e4b566af87738439976ff38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.2/gate-0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "31bc38d2ad253ca3717761e34f2055bffd9325108c47e069662c18d9bf6ebf9a"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.2/gate-0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e41808c2031a544cafdac1a658f8ffc61aeba480a64309fdedebc29dfc2bdbe"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
