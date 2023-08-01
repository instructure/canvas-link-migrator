# frozen_string_literal: true

require_relative "lib/canvas_link_migrator/version"

Gem::Specification.new do |spec|
  spec.name          = "canvas_link_migrator"
  spec.version       = CanvasLinkMigrator::VERSION
  spec.authors       = ["Mysti Lilla", "James Logan"]
  spec.email         = ["mysti@instructure.com", "james.logan@instructure.com"]
  spec.summary       = "Instructure gem for migrating Canvas style rich content"

  spec.files         = Dir.glob("{lib,spec}/**/*") + %w[test.sh]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "nokogiri"
  spec.add_dependency "rack"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "json"
  spec.add_development_dependency "rspec"
end
