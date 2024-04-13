class Starpls < Formula
  desc "A language server for Starlark, the configuration language used by Bazel and Buck2."
  homepage "https://github.com/withered-magic/starpls"
  version "0.1.11"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/withered-magic/starpls/releases/download/v0.1.11/starpls-darwin-arm64.tar.gz"
    else
      raise "Unsupported MacOS architecture, please follow the manual installation instructions at https://github.com/withered-magic/starpls."
    end
  else
    raise "Unsupported OS, please follow the manual installation instructions at https://github.com/withered-magic/starpls."
  end

  def install
    bin.install "starpls"
  end
end