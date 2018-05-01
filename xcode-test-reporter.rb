# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class XcodeTestReporter < Formula
  desc "Generates JUnit or HTML report from Xcode plist test report files."
  homepage "https://github.com/taisukeh/xcode-test-reporter"
  url "https://github.com/taisukeh/xcode-test-reporter/releases/download/0.0.2/xcode-test-reporter_darwin_x86_64"
  sha256 "c80501f83f09915f66b2d8c80b08bdca3220cb19"
  # depends_on "cmake" => :build

  def install
    # system "cmake", ".", *std_cmake_args
    system "cp", "xcode-test-reporter_darwin_x86_64" "xcode-test-reporter_darwin"

     bin.install "xcode-test-reporter"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test xcode-test-reporter`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/xcode-test-reporter", "--help"
  end
end
