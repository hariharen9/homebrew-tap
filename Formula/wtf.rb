class Wtf < Formula
  desc "Where's The File? Blazing-fast interactive terminal file finder and CLI searcher"
  homepage "https://github.com/hariharen9/wtf"
  version "0.0.2"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/hariharen9/wtf/releases/download/v#{version}/wtf-darwin-arm64.tar.gz"
      sha256 "8ebb9b45f2ba7565709eb4830821f771fc18f7876f142a594199fc1c94362eef"
    else
      url "https://github.com/hariharen9/wtf/releases/download/v#{version}/wtf-darwin-amd64.tar.gz"
      sha256 "586a59ac8e1161ea07c86556d5fe3e86f97dba8b4d05ec18e1ba10f1b11db72d"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/hariharen9/wtf/releases/download/v#{version}/wtf-linux-amd64.tar.gz"
      sha256 "fdfde435b90ffc31986e58f7f3a8c18c4ac54204655ace8ec04634440c921d15"
    end
  end

  def install
    bin.install "wtf"
  end

  test do
    assert_match "wtf version #{version}", shell_output("#{bin}/wtf -v")
  end
end
