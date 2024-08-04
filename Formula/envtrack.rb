class Envtrack < Formula
  desc "EnvTrack CLI tool for managing environment variables"
  homepage "https://github.com/envtrack/envtrack-cli"
  version "1.0.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-darwin-arm64"
      sha256 ""
    else
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-darwin-amd64"
      sha256 ""
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-linux-arm64"
      sha256 ""
    else
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-linux-amd64"
      sha256 ""
    end
  end

  def install
    binary_name = "envtrack-b-1.0.1-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}"
    bin.install binary_name => "envtrack"
  end

  test do
    assert_match "b-1.0.1", shell_output("#{bin}/envtrack version --short")
  end
end
