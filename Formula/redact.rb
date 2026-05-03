class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/releases/download/v0.1.1/redact-0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "3e17112d14521e4333e20ea45671ff5989aead2eec135e25ff4db9ac4a02dc44"
  license "MIT"

  def install
    bin.install "redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
