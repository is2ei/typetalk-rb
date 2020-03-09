# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'typetalk/version'

Gem::Specification.new do |spec|
  spec.name          = "typetalk"
  spec.version       = Typetalk::VERSION
  spec.authors       = ["umakoz"]
  spec.email         = ["umakoz@gmail.com"]
  spec.summary       = %q{A Ruby wrapper for Typetalk}
  spec.description   = %q{A Ruby wrapper for Typetalk}
  spec.homepage      = "https://github.com/umakoz/typetalk-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_dependency "hashie"
  spec.add_dependency "faraday"
  spec.add_dependency "mime-types"

  spec.add_development_dependency "bundler", ">= 1.6"
  spec.add_development_dependency "rake", "< 11.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "vcr"
end
