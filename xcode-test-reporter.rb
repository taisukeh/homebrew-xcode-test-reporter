# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class XcodeTestReporter < Formula
  desc "Generates JUnit or HTML report from Xcode plist test report files."
  homepage "https://github.com/taisukeh/xcode-test-reporter"
  url "https://github.com/taisukeh/xcode-test-reporter/releases/download/0.0.2/xcode-test-reporter_darwin_x86_64"
  sha256 "deb34d0aa19a091a61867f73247a88b076c5891a0e0f431871db2ed88ec00057"
  # depends_on "cmake" => :build

  def install
    # system "cmake", ".", *std_cmake_args
    system "cp", "xcode-test-reporter_darwin_x86_64", "xcode-test-reporter_darwin"

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
