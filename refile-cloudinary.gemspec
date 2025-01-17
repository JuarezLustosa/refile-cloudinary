# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'refile/cloudinary/version'

Gem::Specification.new do |spec|
  spec.name          = "refile-cloudinary"
  spec.version       = Refile::Cloudinary::VERSION
  spec.authors       = ["Piotr Usewicz"]
  spec.email         = ["piotr@layer22.com"]

  spec.summary       = %q{Refile Cloudinary support}
  spec.description   = %q{This gems provides the functionality needed to support uploads to Cloudinary}
  spec.homepage      = "https://github.com/pusewicz/refile-cloudinary"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency             "cloudinary", "~> 1.8.3 "
  spec.add_dependency             "refile", "~> 0.6.2"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
