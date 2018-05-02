#!/usr/bin/env sh

set -eu

tag=`curl -s -L https://api.github.com/repos/taisukeh/xcode-test-reporter/releases/latest | jq -r '.tag_name'`

sha256=`curl -s -L https://github.com/taisukeh/xcode-test-reporter/releases/download/$tag/xcode-test-reporter_darwin_x86_64.sha256`

cat << EOL > xcode-test-reporter.rb
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class XcodeTestReporter < Formula
  desc "Generates JUnit or HTML report from Xcode plist test report files."
  homepage "https://github.com/taisukeh/xcode-test-reporter"
  url "https://github.com/taisukeh/xcode-test-reporter/releases/download/$tag/xcode-test-reporter_darwin_x86_64"
  sha256 "$sha256"

  def install
    system "cp", "xcode-test-reporter_darwin_x86_64", "xcode-test-reporter_darwin"

    bin.install "xcode-test-reporter"
  end

  test do
    system "#{bin}/xcode-test-reporter", "--help"
  end
end
EOL
