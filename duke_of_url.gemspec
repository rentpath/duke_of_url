# -*- encoding: utf-8 -*-
require 'date'
require './lib/duke_of_url/util/version'

Gem::Specification.new do |gem|
  gem.add_dependency 'activesupport'
  gem.add_dependency 'hashie'
  gem.add_dependency 'postrank-uri'

  gem.add_development_dependency 'bogus'
  gem.add_development_dependency 'byebug'
  gem.add_development_dependency 'factory_girl'
  gem.add_development_dependency 'faker'
  gem.add_development_dependency 'grb'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'

  gem.authors       = ['Martin Streicher']
  gem.date          = Date.today.to_s
  gem.description   = 'Normalize and SHA1-encode URLs'
  gem.email         = ['mstreicher@rentpath.com']
  gem.files         = `git ls-files`.split($/)
  gem.homepage      = 'http://github.com/primedia/duke_of_url'
  gem.name          = 'duke_of_url'
  gem.platform      = Gem::Platform::RUBY
  gem.require_paths = ['lib']
  gem.required_ruby_version = '>= 1.9.3'
  gem.summary       = 'Normalize and SHA1-encode URLs'
  gem.version       = DukeOfUrl::VERSION
end
