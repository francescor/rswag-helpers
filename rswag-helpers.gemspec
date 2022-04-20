require_relative 'lib/rswag/helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "rswag-helpers"
  spec.version       = Rswag::Helpers::VERSION
  spec.authors       = ["Santanu Karmakar"]
  spec.email         = ["skarmakar.personal@gmail.com"]

  spec.summary       = %q{rswag helper methods}
  spec.description   = %q{This gem is going to add some helpers and custom matchers for rswag, which will make writing rswag specs easy}
  spec.homepage      = "https://github.com/skarmakar/rswag-helpers"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/skarmakar/rswag-helpers"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end