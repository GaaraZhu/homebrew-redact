class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/releases/download/v0.2.0/redact-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "907f8ab806cbf688677f6a0f62555eec7fe38d0c872e56a2ee6ccf6c320cb960"
  license "MIT"

  def install
    bin.install "redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
