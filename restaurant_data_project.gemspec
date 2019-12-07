lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "restaurant_data_project/version"

Gem::Specification.new do |spec|
  spec.name          = "restaurant_data_project"
  spec.version       = RestaurantDataProject::VERSION
  spec.authors       = ["Mel"]
  spec.email         = ["melchrstmn@gmail.com"]

  spec.summary       = "CLI project, pulling restaurant data from an API"
  spec.homepage      = "https://github.com/melchr/restaurant_data_project"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/melchr/restaurant_data_project"

  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
