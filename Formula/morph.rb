class Morph < Formula
  desc "The Universal File Converter for the Command Line."
  homepage "https://github.com/hariharen9/morph"
  version "1.0.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/hariharen9/morph/releases/download/v1.0.4/morph-darwin-amd64.tar.gz"
    sha256 "ab20aeb37ba0a97c5ea179504ac09be8e83c1c5200bb11c208e4512b5a91bc9a"
  elsif OS.linux?
    url "https://github.com/hariharen9/morph/releases/download/v1.0.4/morph-linux-amd64.tar.gz"
    sha256 "40d206d977470fcb33f80f1d43f31327f44d934c5d18e57eeefde4e1c2ad2c52"
  end

  def install
    bin.install "morph"
  end

  test do
    system "#{bin}/morph", "--version"
  end
end
