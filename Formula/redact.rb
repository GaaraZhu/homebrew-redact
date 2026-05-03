class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/releases/download/v0.1.5/redact-0.1.5-aarch64-apple-darwin.tar.gz"
  sha256 "6e48b968d1e062dd74dc56375e90fb33f5821182d3ef3b524020b395afe5f7d2"
  license "MIT"

  def install
    bin.install "redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
