require 'formula'

HOMEBREW_TW_VERSION='1.4.0'
class Tw < Formula
  homepage 'https://github.com/upamune/tw'
  url 'https://github.com/upamune/tw.git', :tag => "v#{HOMEBREW_TW_VERSION}"
  version HOMEBREW_TW_VERSION
  head 'https://github.com/upamune/tw.git', :branch => 'master'

  def install
    system 'curl','-L','-o','tw',"https://github.com/upamune/tw/releases/download/v#{HOMEBREW_TW_VERSION}/tw_darwin_amd64"
    bin.install 'tw'
  end
end
