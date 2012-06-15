# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cf_crypto/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ryan Ricard"]
  gem.email         = ["ryan.ricard@gmail.com"]
  gem.description   = "Library of methods to help decrypt data received from ColdFusion."
  gem.summary       = "Library of methods to help decrypt data received from ColdFusion."
  gem.homepage      = ""

  gem.add_development_dependency "rspec"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cf_crypto"
  gem.require_paths = ["lib"]
  gem.version       = CfCrypto::VERSION
end
