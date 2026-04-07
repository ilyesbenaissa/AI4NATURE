source "https://rubygems.org"

# PATCH FOR RUBY 3.2+ RUNNING LIQUID 4.0 (github-pages dependency)
class Object
  def tainted?
    false
  end
  def taint; self; end
  def untaint; self; end
end

gem "jekyll"
gem "jekyll-feed", group: :jekyll_plugins
gem "jekyll-seo-tag", group: :jekyll_plugins# Ruby 4.0+ missing stdlib gems
gem "csv"
gem "bigdecimal"
gem "base64"
gem "logger"
gem "ostruct"
gem "mutex_m"
gem "json"
gem "webrick"      # Required for jekyll serve
gem "rexml"        # Often needed by jekyll
gem "minima", "~> 2.5"
