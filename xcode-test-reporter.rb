# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class XcodeTestReporter < Formula
  desc "Generates JUnit or HTML report from Xcode plist test report files."
  homepage "https://github.com/taisukeh/xcode-test-reporter"
  url "https://github.com/taisukeh/xcode-test-reporter/releases/download/0.0.5/xcode-test-reporter_darwin_x86_64.tar.gz"
  sha256 "3d2694a290ead8d503e57011633cd410964bc02737957c17bace0e184830aba0"

  def install
    bin.install "xcode-test-reporter"
  end

  test do
    system "#{bin}/xcode-test-reporter", "--help"
  end
end
