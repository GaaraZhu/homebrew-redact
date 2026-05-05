class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/releases/download/v0.2.1/redact-0.2.1-aarch64-apple-darwin.tar.gz"
  sha256 "a70c692c548ae64f18cacf06dbbbadd9b1d1fe5c7483cf6d43af7e965daddd5e"
  license "MIT"

  def install
    bin.install "redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
