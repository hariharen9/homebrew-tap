# Formula/enhance-this.rb
class EnhanceThis < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to enhance prompts using Ollama AI"
  homepage "https://github.com/hariharen9/enhance-this"
  # url "https://pypi.io/packages/source/e/enhance-this/enhance-this-0.1.0.tar.gz" # <-- TODO: Update with real URL on first release
  # sha256 "..." # <-- TODO: Update with real hash on first release
  url "https://github.com/hariharen9/enhance-this/archive/refs/tags/v0.2.2.tar.gz" # Placeholder
  sha256 "e0442b6f4ab651dfb172d19d62bd4b461f19c3a429aa0706217e9573e4fb312c" # Placeholder

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/enhance", "--version"
  end
end
