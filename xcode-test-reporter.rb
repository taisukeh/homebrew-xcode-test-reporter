# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class XcodeTestReporter < Formula
  desc "Generates JUnit or HTML report from Xcode plist test report files."
  homepage "https://github.com/taisukeh/xcode-test-reporter"
  url "https://github.com/taisukeh/xcode-test-reporter/releases/download/0.0.2/xcode-test-reporter_darwin_x86_64.tar.gz"
  sha256 "1ee2d0d0465b0ae2fedbc44fea34aeb48f52493eeb21db12251f940befa57a3f"

  def install
    system "cp", "xcode-test-reporter_darwin_x86_64", "xcode-test-reporter_darwin"

    bin.install "xcode-test-reporter"
  end

  test do
    system "#{bin}/xcode-test-reporter", "--help"
  end
end
