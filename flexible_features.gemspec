# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flexible_features/version'

Gem::Specification.new do |spec|
  spec.name          = "flexible_features"
  spec.version       = FlexibleFeatures::VERSION
  spec.authors       = ["Miker Renardus"]
  spec.email         = ["miker.renardus@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{Add features to a model on the fly.}
  spec.description   = %q{A user can add feature descriptors to a parent model. The child model gets extra attributes based on the feature descriptors.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "GPLv3"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "spec"
end
