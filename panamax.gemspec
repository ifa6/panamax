# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'panamax/version'

Gem::Specification.new do |spec|
  spec.name          = "panamax"
  spec.version       = Panamax::VERSION
  spec.authors       = ["Delaney Burke"]
  spec.email         = ["delaney.burke@coachinabox.biz"]
  spec.summary       = %q{Docker Container Crane}
  spec.description   = %q{A simple docker container deployment and management tool}
  spec.homepage      = "http://panamax.ciabos.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
