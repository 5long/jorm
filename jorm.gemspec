# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jorm/version'

Gem::Specification.new do |spec|
  spec.name          = "jorm"
  spec.version       = Jorm::VERSION
  spec.authors       = ["Whyme Lyu"]
  spec.email         = ["callme5long@gmail.com"]
  spec.summary       = %q{Normalize JAV folder name}
  spec.license       = "MIT"

  spec.files         = %w{
    README.md
    Changelog.md
    LICENSE.txt
    bin/jorm
    lib/jorm.rb
    lib/jorm/folder.rb
    lib/jorm/version.rb
    test/mt_helper.rb
    test/test_jorm.rb
  }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "main", "~> 5.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.0"
end
