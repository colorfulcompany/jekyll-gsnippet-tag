# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jekyll/gsnippet/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-gsnippet-tag"
  spec.version = Jekyll::Gsnippet::VERSION
  spec.authors = [""]
  spec.email = [""]

  spec.summary = "Google Analytic gtag.js snippet tag for Jekyll"
  spec.description = "Google Analytic gtag.js snippet tag for Jekyll"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["source_code_uri"] = "https://github.com/colorfulcompany/jekyll-gsnippet-tag"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "gsnippet"
  spec.add_runtime_dependency "jekyll"
end
