
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hoist/version"

Gem::Specification.new do |spec|
  spec.name          = "hoist"
  spec.version       = Hoist::VERSION
  spec.authors       = ["KUY.io. Inc."]
  spec.email         = ["dev@kuy.io"]

  spec.summary       = %q{Dyanmically render templated Kubernetes manifests}
  spec.description   = %q{Hoist can be used to dynamically render Kubernetes manifest files given a specific configuration from which template variables are taken.}
  spec.homepage      = "https://github.com/kuyio/hoist"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables << "hoist"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
