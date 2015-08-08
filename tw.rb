require 'formula'

HOMEBREW_TW_VERSION='1.3.0'
class Tw < Formula
  homepage 'https://github.com/upamune/tw'
  url 'https://github.com/upamune/tw.git', :tag => "v#{HOMEBREW_TW_VERSION}"
  version HOMEBREW_TW_VERSION

  def install
    system 'curl','-o','tw',"https://github.com/upamune/tw/releases/download/v#{HOMEBREW_TW_VERSION}/tw_darwin_amd64"
    bin.install 'tw'
  end
end
