class Wtf < Formula
  desc "Where's The File? Blazing-fast interactive terminal file finder and CLI searcher"
  homepage "https://github.com/hariharen9/wtf"
  version "0.0.1"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/hariharen9/wtf/releases/download/v#{version}/wtf-darwin-arm64.tar.gz"
      sha256 "c16359ab86de917cae5a4c69f83802d46e9a3a630524f33e646c78f7910ff572"
    else
      url "https://github.com/hariharen9/wtf/releases/download/v#{version}/wtf-darwin-amd64.tar.gz"
      sha256 "b661a00bf15e417ecc01437716c61a40b4fb8ba36634f99649e793b22a21ceb4"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/hariharen9/wtf/releases/download/v#{version}/wtf-linux-amd64.tar.gz"
      sha256 "21ab80c74483580b6cbbca15d6409109d17434375c9f6b9320695fca13dace5d"
    end
  end

  def install
    bin.install "wtf"
  end

  test do
    assert_match "wtf version #{version}", shell_output("#{bin}/wtf -v")
  end
end
