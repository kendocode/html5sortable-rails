
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "html5sortable/rails/version"

Gem::Specification.new do |spec|
  spec.name          = "html5sortable-rails"
  spec.version       = Html5sortable::Rails::VERSION
  spec.authors       = ["kendocode"]
  spec.email         = ["git@kendocoding.com"]

  spec.summary       = "Wraps the excellent html5sortable javascript library ofr easy inclusion in the Rails Asset Pipeline."
  spec.homepage      = "https://github.com/kendocode/html5sortable-rails.git"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "railties", "> 4.0"
end
