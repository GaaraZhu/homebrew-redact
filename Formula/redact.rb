class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2d3dde27fa254b85748993e47b2e3108433b032afb049b4c0426e533123957c8"
  license "MIT"
  head "https://github.com/GaaraZhu/redact.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "crates/redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
