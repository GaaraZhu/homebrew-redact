class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7c05cce330ef5c3ded6732a23810ad672dff7aa314c727cdb8e3d3601e2943da"
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
