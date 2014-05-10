# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fany/version'

Gem::Specification.new do |spec|
  spec.name          = "fany"
  spec.version       = Fany::VERSION
  spec.authors       = ["mose"]
  spec.email         = ["mose@mose.com"]
  spec.description   = %q{Online translation feature added to rails 4 application.}
  spec.summary       = %q{Online translation feature added to rails 4 application.}
  spec.homepage      = "https://github.com/mose/fany"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 4.1.1"
  spec.add_dependency "yajl-ruby"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'combustion', '~> 0.4.0'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'pry'

end
