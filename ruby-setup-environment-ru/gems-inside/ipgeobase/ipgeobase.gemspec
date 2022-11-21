# frozen_string_literal: true

require_relative "lib/ipgeobase/version"

Gem::Specification.new do |spec|
  spec.name = "ipgeobase"
  spec.version = Ipgeobase::VERSION
  spec.authors = ["Yakanaro"]
  spec.email = ["kipaherd@gmail.com"]

  spec.summary = "metadata ip."
  spec.description = "gem communication information on IP "
  spec.homepage = "https://github.com/LitvinDaria/ruby_gem"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://github.com/LitvinDaria/ruby_gem'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/LitvinDaria/ruby_gem"
  spec.metadata["changelog_uri"] = "https://github.com/LitvinDaria/ruby_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
