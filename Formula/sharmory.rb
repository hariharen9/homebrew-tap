# typed: false
# frozen_string_literal: true

class Sharmory < Formula
  desc "Single-file Zsh, Bash, and PowerShell library of developer shell functions"
  homepage "https://github.com/hariharen9/sharmory"
  url "https://github.com/hariharen9/sharmory/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "897ea077cb699619c4cf69b703a60f37517bd6dafc15b8c28095a6499bf4c833"
  license "MIT"
  head "https://github.com/hariharen9/sharmory.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    prefix.install "functions.zsh"
    prefix.install "functions.bash"
    prefix.install "functions.ps1"
    prefix.install "LICENSE"
  end

  def caveats
    <<~EOS
      Sharmory is a sourced library, not a standalone binary.

      For Zsh, add this line to your ~/.zshrc:

        source #{opt_prefix}/functions.zsh

      For Bash (requires Bash 4.0+), add this line to your ~/.bashrc:

        source #{opt_prefix}/functions.bash

      Then restart your shell or source the RC file.
    EOS
  end

  test do
    assert_predicate prefix/"functions.zsh", :exist?
    assert_predicate prefix/"functions.bash", :exist?
    output = shell_output("zsh -c 'source #{prefix}/functions.zsh && sharmory list' 2>&1")
    assert_match "git", output
  end
end
