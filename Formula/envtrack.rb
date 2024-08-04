class Envtrack < Formula
  desc "EnvTrack CLI tool for managing environment variables"
  homepage "https://github.com/envtrack/envtrack-cli"
  version "v1.0.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/envtrack/envtrack-cli/releases/download/v1.0.2/envtrack-v1.0.2-darwin-arm64"
      sha256 ""
    else
      url "https://github.com/envtrack/envtrack-cli/releases/download/v1.0.2/envtrack-v1.0.2-darwin-amd64"
      sha256 ""
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/envtrack/envtrack-cli/releases/download/v1.0.2/envtrack-v1.0.2-linux-arm64"
      sha256 ""
    else
      url "https://github.com/envtrack/envtrack-cli/releases/download/v1.0.2/envtrack-v1.0.2-linux-amd64"
      sha256 ""
    end
  end

  def install
    binary_name = "envtrack-v1.0.2-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}"
    bin.install binary_name => "envtrack"
  end

  test do
    assert_match "v1.0.2", shell_output("#{bin}/envtrack version --short")
  end
end
