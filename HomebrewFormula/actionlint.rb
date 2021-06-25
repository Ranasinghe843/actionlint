# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Actionlint < Formula
  desc "Static checker for GitHub Actions workflow files"
  homepage "https://github.com/rhysd/actionlint#readme"
  version "1.2.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.2.0/actionlint_1.2.0_darwin_amd64.tar.gz"
      sha256 "169a43f04398b3bf9db5c29d86f6625b515b583da805f277be2e82480df1201f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rhysd/actionlint/releases/download/v1.2.0/actionlint_1.2.0_linux_amd64.tar.gz"
      sha256 "bbe6f04ff881e42d9c389959cb6d93265d590b70c07713101669891c6ec4f2a4"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.2.0/actionlint_1.2.0_linux_armv6.tar.gz"
      sha256 "21642edcd00fe177ed80a1c8adb5ad0246504cc1ac439d7d39d0682c9e56f7ed"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rhysd/actionlint/releases/download/v1.2.0/actionlint_1.2.0_linux_arm64.tar.gz"
      sha256 "8f6254d6635c7559de48af15bae26887d7b05955d7c02067645e6d59bdd600e7"
    end
  end

  def install
    bin.install "actionlint"
  end

  test do
    system "#{bin}/actionlint -version"
  end
end
