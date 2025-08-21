# Formula/enhance-this.rb
class EnhanceThis < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to enhance prompts using Ollama AI"
  homepage "https://github.com/hariharen9/enhance-this"
  # url "https://pypi.io/packages/source/e/enhance-this/enhance-this-0.1.0.tar.gz" # <-- TODO: Update with real URL on first release
  # sha256 "..." # <-- TODO: Update with real hash on first release
  url "https://github.com/hariharen9/enhance-this/archive/refs/tags/v0.1.5.tar.gz" # Placeholder
  sha256 "e765cecc86a4293f7f7e225d835725da164b53d5f7aebc1a851202271ecf1110" # Placeholder

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/enhance", "--version"
  end
end
