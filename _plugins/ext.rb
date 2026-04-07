# frozen_string_literal: true

# This patch resolves the `undefined method 'tainted?' for an instance of String` 
# error that occurs when running Jekyll 3.9 (required by github-pages) with 
# older versions of Liquid on Ruby 3.2+.
# Ruby 3.2 completely removed the tainted? method, causing Liquid to crash.

class Object
  unless method_defined?(:tainted?)
    def tainted?
      false
    end
  end

  unless method_defined?(:taint)
    def taint
      self
    end
  end

  unless method_defined?(:untaint)
    def untaint
      self
    end
  end
end
