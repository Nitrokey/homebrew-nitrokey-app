class NitrokeyApp < Formula
  homepage "www.nitrokey.com"
  url "https://github.com/Nitrokey/nitrokey-app/archive/master.tar.gz"
  version "0.1"
  sha256 "6c8f151824e9651266f0ac301b1598dd5d4211e2eb9b3c5f3fb12e7fd39326ec"

  depends_on "cmake" => :build
  depends_on "qt" => :build
  depends_on "libusb" => :build

  def install
    system "make", "-f", "Makefile.top", "install"
  end

  test do
    system "nitrokey-app", "--help"
  end
end
