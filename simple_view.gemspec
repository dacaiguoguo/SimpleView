# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple_view/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Sean Ho"]
  gem.email         = ["sean.ho@conceptable.net"]
  gem.description   = "RubyMotion DSL for UIKit"
  gem.summary       = "RubyMotion DSL for UIKit"
  gem.homepage      = "https://github.com/seanho/SimpleView"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "simple-view"
  gem.require_paths = ["lib"]
  gem.version       = SimpleView::VERSION
end