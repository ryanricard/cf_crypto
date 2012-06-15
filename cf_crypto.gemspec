# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cf_crypto/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ryan Ricard"]
  gem.email         = ["ryan.ricard@gmail.com"]
  gem.description   = "A gem that helps Ruby applications exchange encrypted data with ColdFusion."
  gem.summary       = "A gem that helps Ruby applications exchange encrypted data with ColdFusion."
  gem.homepage      = "https://github.com/ryanricard/cf_crypto"

  gem.add_development_dependency "rspec"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cf_crypto"
  gem.require_paths = ["lib"]
  gem.version       = CfCrypto::VERSION
end
