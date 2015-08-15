# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tilda/api/version'

Gem::Specification.new do |spec|
  spec.name          = "tilda-api"
  spec.version       = Tilda::Api::VERSION
  spec.authors       = ["Eugene Stepanov"]
  spec.email         = ["antynitr@gmail.com"]
  spec.summary       = "Tilda API"
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir[File.join("lib", "**", "*")]
  spec.executables   = Dir[File.join("bin", "**", "*")].map! { |f| f.gsub(/bin\//, "") }
  spec.test_files    = Dir[File.join("test", "**", "*"), File.join("spec", "**", "*"), File.join("features", "**", "*")]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'

  spec.add_runtime_dependency 'httparty'
end
