
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "style_builder/version"

Gem::Specification.new do |spec|

  spec.name          = "style_builder"
  spec.version       = StyleBuilder::VERSION
  spec.authors       = ["Elias Ferreira Junior"]
  spec.email         = ["eliaswebdev@gmail.com"]

  spec.summary       = %q{Stylesheets generator builder.}
  spec.description   = %q{This gem build a basic structure for stylesheet folders and files.}
  # spec.homepage    = 'https://rubygems.org/gems/style_builder'
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # spec.files       = ["lib/style_builder.rb"]
  spec.metadata    = { "source_code_uri" => "https://github.com/eliaswebdev/style_builder.git" }

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
