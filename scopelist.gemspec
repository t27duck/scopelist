# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scopelist/version'

Gem::Specification.new do |spec|
  spec.name          = 'scopelist'
  spec.version       = Scopelist::VERSION
  spec.authors       = ['Tony Drake']
  spec.email         = ['t27duck@gmail.com']
  spec.summary       = 'Adds ability to track scopes on ActiveRecord models'
  spec.description   = 'Adds ability to track scopes on ActiveRecord models'
  spec.homepage      = 'https://github.com/t27duck/scopelist'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '>= 4.0.0'
  spec.add_dependency 'activesupport', '>= 4.0.0'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end
