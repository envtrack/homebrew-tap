class Envtrack < Formula
  desc "EnvTrack CLI tool for managing environment variables"
  homepage "https://github.com/envtrack/envtrack-cli"
  version "1.0.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-darwin-arm64"
      sha256 "751373cb4b39dbd4e0b1f6df75023b918aa3b008ef1edbdcc72b18f31b6eab4d"
    else
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-darwin-amd64"
      sha256 "1a346921526149620b59c1c0fe9b8a02a9280f9d790eb6cb3cbd2fb713456546"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-linux-arm64"
      sha256 "05889a5f22419c848d66c6e22df737c9c0b833e4111b741be2ddcc3a952f3cfd"
    else
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-linux-amd64"
      sha256 "9059a7c46ea2d1606b05611e468e9de842d814f5bf1abb78e7857c348a160efd"
    end
  end

  def install
    binary_name = "envtrack-#{version}-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}"
    bin.install binary_name => "envtrack"
  end

  # test do
  #   assert_match "EnvTrack CLI version 1.0.1", shell_output("#{bin}/envtrack version")
  # end
end
