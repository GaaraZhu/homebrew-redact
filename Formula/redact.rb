class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/releases/download/v0.1.0/redact-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "ea8d57f5b76c8924618b947f1e81eb3de9572d81581d2b2629107c82736266ba"
  license "MIT"

  def install
    bin.install "redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
