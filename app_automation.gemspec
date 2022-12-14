# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'app_automation/version'

Gem::Specification.new do |spec|
	spec.name = 'app_automation'
	spec.version = AppAutomation::VERSION
	spec.authors = ['Blair Replogle']
	spec.email = ['blair.replogle@gmail.com']

	spec.summary = 'Write a short summary, because RubyGems requires one.'
	# spec.description = "TODO: Write a longer description or delete this line."
	# spec.homepage = "TODO: Put your gem's website or public repo URL here."
	spec.license = 'MIT'
	spec.required_ruby_version = '>= 2.6.0'

	# spec.metadata['allowed_push_host'] = "TODO: Set to your gem server 'https://example.com'"
	# spec.metadata["homepage_uri"] = spec.homepage
	# spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
	# spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

	spec.files = Dir["lib/**/*"] + %w(README.md LICENSE)
	spec.require_paths = ['lib']

	# Uncomment to register a new dependency of your gem
	# spec.add_dependency "example-gem", "~> 1.0"

	# For more information and examples about making a new gem, check out our
	# guide at: https://bundler.io/guides/creating_gem.html
end
