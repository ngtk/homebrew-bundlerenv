class Bundlerenv < Formula
  desc "use Bundler version specified by Gemfile.lock"
  homepage "https://github.com/ngtk/bundlerenv"
  url "https://github.com/ngtk/bundlerenv/archive/v0.4.0.tar.gz"
  sha256 "bd98ede7a5f4c9f6ffc28b120088bcec4d628c3774784d7b780c090a3e3213db"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  def caveats
    <<-EOS.undent
    To enable shims and autocompletion add to your profile:
      if which bundle > /dev/null; then eval "$(bundlerenv init -)"; fi
    EOS
  end
end
