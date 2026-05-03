class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/releases/download/v0.1.2/redact-0.1.2-aarch64-apple-darwin.tar.gz"
  sha256 "a8e0d49f89dbdb8c57f46bb15c378c914255dfe5119edceebfb97de504ad7e16"
  license "MIT"

  def install
    bin.install "redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
