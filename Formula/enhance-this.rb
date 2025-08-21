# Formula/enhance-this.rb
class EnhanceThis < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to enhance prompts using Ollama AI"
  homepage "https://github.com/hariharen9/enhance-this"
  # url "https://pypi.io/packages/source/e/enhance-this/enhance-this-0.1.0.tar.gz" # <-- TODO: Update with real URL on first release
  # sha256 "..." # <-- TODO: Update with real hash on first release
  url "https://github.com/hariharen9/enhance-this/archive/refs/tags/v0.1.3.tar.gz" # Placeholder
  sha256 "a83f8c16e46259e1ebe61bcdd8a7a69d114cd482429ccec3122db1c9a79ed7ef" # Placeholder

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/enhance", "--version"
  end
end
