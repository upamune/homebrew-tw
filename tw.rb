require 'formula'

HOMEBREW_TW_VERSION='1.3.0'
class Tw < Formula
  homepage 'https://github.com/upamune/tw'
  url 'https://github.com/upamune/tw.git', :tag => "v#{HOMEBREW_TW_VERSION}"
  version HOMEBREW_TW_VERSION
  head 'https://github.com/upamune/tw.git', :branch => 'master'

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'get', 'github.com/codegangsta/cli'
    system 'go', 'get', 'github.com/ChimeraCoder/anaconda'
    system 'go', 'get', 'github.com/mitchellh/go-homedir'
    system 'go', 'get', 'github.com/mrjones/oauth'
    system 'go', 'get', 'github.com/skratchdot/open-golang/open'
    system 'go', 'get', 'github.com/mgutz/ansi'
    system 'go', 'get', 'github.com/BurntSushi/toml'
    system 'go', 'build', '-o', 'tw'
    bin.install 'tw'
  end
end
