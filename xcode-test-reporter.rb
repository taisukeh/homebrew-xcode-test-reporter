# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class XcodeTestReporter < Formula
  desc "Generates JUnit or HTML report from Xcode plist test report files."
  homepage "https://github.com/taisukeh/xcode-test-reporter"
  url "https://github.com/taisukeh/xcode-test-reporter/releases/download/0.0.3/xcode-test-reporter_darwin_x86_64.tar.gz"
  sha256 "2f9da2541677faf6f46853f9fe017313ffd69030cfc2ed19e545ae38cf36640b"

  def install
    system "cp", "xcode-test-reporter_darwin_x86_64", "xcode-test-reporter_darwin"

    bin.install "xcode-test-reporter"
  end

  test do
    system "#{bin}/xcode-test-reporter", "--help"
  end
end
