# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Libkdegames < Formula
  desc ""
  homepage ""
  url "https://invent.kde.org/games/libkdegames/-/archive/release/23.04/libkdegames-release-23.04.tar.gz"
  sha256 "88e223fc2ff528669c7c432afac0b958719059a77a8b48a62ed47fdcb936ca00"
  license all_of: ["BSD-2-Clause", "BSD-3-Clause", "CC0-1.0", "GFDL-1.2-or-later", "GPL-2.0-or-later", "ICS", "LGPL-2.0-only", "LGPL-2.0-or-later"]
  version "23.04"

  depends_on "cmake" => :build
  depends_on "qt5"
  depends_on "kArchive"
  depends_on "kI18n"
  depends_on "kde-mac/kde/kf5-kCompletion"
  depends_on "kde-mac/kde/kf5-kConfig"
  depends_on "kde-mac/kde/kf5-kConfigWidgets"
  depends_on "kde-mac/kde/kf5-kDNSSD"
  depends_on "kde-mac/kde/kf5-kGuiAddons"
  depends_on "kde-mac/kde/kf5-kIconThemes"
  depends_on "kde-mac/kde/kf5-kNewStuff"
  depends_on "kde-mac/kde/kf5-kService"
  depends_on "kde-mac/kde/kf5-kXmlGui"
  depends_on "kde-mac/kde/kf5-kWidgetsAddons"
  depends_on "extra-cmake-modules"



  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "cmake", "-S", ".", "-B", "build", *kde_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test libkdegames`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
