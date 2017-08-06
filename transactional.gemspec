# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "transactional/version"

Gem::Specification.new do |spec|
  spec.name          = "transactional"
  spec.version       = Transactional::VERSION
  spec.authors       = ["Tsukuru Tanimichi"]
  spec.email         = ["info+git@ttanimichi.com"]
  spec.summary       = "Declarative transaction management for Ruby on Rails"
  spec.homepage      = "https://github.com/ttanimichi/transactional"
  spec.license       = "MIT"
  spec.require_paths = ["lib"]

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
