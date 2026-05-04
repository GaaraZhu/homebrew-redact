class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/releases/download/v0.1.6/redact-0.1.6-aarch64-apple-darwin.tar.gz"
  sha256 "22f768ba3ee7c9ba2d83d90ea3ffe328eff84069b1070ba36e4a29cb92116351"
  license "MIT"

  def install
    bin.install "redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
