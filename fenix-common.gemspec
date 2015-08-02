# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fenix/common/version'

Gem::Specification.new do |spec|
  spec.name          = "fenix-common"
  spec.version       = Fenix::Common::VERSION
  spec.authors       = ["phgrey"]
  spec.email         = ["phgrey@gmail.com"]

  spec.summary       = %q{Common parts of the fenix project}
  spec.description   = %q{Some deep tech part of the fenix project. Almost unusable. Please refer to fenix or fenix-client instead}
  spec.homepage      = "https://github.com/phgrey/fenix-common"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activesupport', '~> 4.2'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
