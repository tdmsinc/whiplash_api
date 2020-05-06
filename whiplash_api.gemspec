# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whiplash_api/version'

Gem::Specification.new do |spec|
  spec.name          = "whiplash_api"
  spec.version       = WhiplashApi::VERSION
  spec.authors       = ["Mark Dickson"]
  spec.email         = ["mark@sitesteaders.com"]

  spec.summary       = %q{Ruby Gem for connecting to the Whiplash Merchandising API}
  spec.description   = %q{Ruby Gem for connecting to the Whiplash Merchandising API}
  spec.homepage      = "http://github.com/ideaoforder/whiplash_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.10"
  spec.add_development_dependency "rake", ">= 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "webmock"

  spec.add_dependency "thor"
  spec.add_dependency "activesupport"
  spec.add_dependency "activeresource", ">= 4.0.0"
end
