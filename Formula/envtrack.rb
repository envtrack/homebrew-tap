class Envtrack < Formula
  desc "EnvTrack CLI tool for managing environment variables"
  homepage "https://github.com/envtrack/envtrack-cli"
  version "1.0.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-darwin-arm64"
      sha256 "c8e5759bc05f1817d0965fae531f91d0808751359b79905fc891216ec8cc8c70"
    else
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-darwin-amd64"
      sha256 "867a3e230d341b4f70ae64bd4edccd3dfc166e6f4bcf19d24ca454493a86b5c1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-linux-arm64"
      sha256 "3e2d544beb64321a046835428f8320a7e57ebb5b5fc19dfc352546b709f98b2c"
    else
      url "https://github.com/envtrack/envtrack-cli/releases/download/b-1.0.1/envtrack-b-1.0.1-linux-amd64"
      sha256 "e3591d3cf93dc6e9f4e8d4e95c718cb760cbc1b741db969c315929016d88d27b"
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
