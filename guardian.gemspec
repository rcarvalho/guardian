# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guardian/version'

Gem::Specification.new do |gem|
  gem.name          = "guardian"
  gem.version       = Guardian::VERSION
  gem.authors       = ["Forrest Grant"]
  gem.email         = ["fgrant@atlantistech.com"]
  gem.description   = "Protect web forms form spam."
  gem.summary       = "Protect web forms from sapm."
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/) + Dir["{lib,vendor}/**/*"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
