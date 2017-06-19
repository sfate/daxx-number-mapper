# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "number-mapper/version"

Gem::Specification.new do |spec|
  spec.name          = "number-mapper"
  spec.version       = NumberMapper::VERSION
  spec.authors       = ["Alexey Bobyrev"]
  spec.email         = ["alexey.bobyrev@gmail.com"]

  spec.summary       = %q{Convert phone number to the list of words.}
  spec.description   = %q{Test task for performing number mapping to a word(-s) with provided dictionary list.}
  spec.homepage      = "https://github.com/sfate/daxx-number-mapper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
