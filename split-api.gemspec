# -*- encoding: utf-8 -*-
require File.expand_path('../lib/split/api/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Nesbitt"]
  gem.email         = ["andrewnez@gmail.com"]
  gem.summary       = %q{Rest API extension for Split}
  gem.homepage      = 'http://github.com/splitrb/split-api'
  gem.license       = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "split-api"
  gem.require_paths = ['lib']
  gem.version       = Split::Api::VERSION

  gem.add_dependency 'split', '>= 2.0'
  gem.add_dependency 'sinatra'
  gem.add_dependency 'multi_json'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rspec',       '~> 3.9.0'
  gem.add_development_dependency 'rack-test',   '~> 1.1'
  gem.add_development_dependency 'rake',        '~> 13.0'
end
