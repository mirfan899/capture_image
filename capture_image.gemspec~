# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capture_image/version'

Gem::Specification.new do |spec|
  spec.name          = "capture_image"
  spec.version       = CaptureImage::VERSION
  spec.authors       = ["muhammad-irfan-confiz"]
  spec.email         = ["muhammad.irfan@confiz.com"]
  spec.description   = %q{it uses phantomjs at backend to create an image of given url on middleware level }
  spec.summary       = %q{it creates an image of given url using middleware}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "phantomjs", "~> 1.8.1"
end
