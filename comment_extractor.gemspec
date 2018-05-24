
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "comment_extractor/version"

Gem::Specification.new do |spec|
  spec.name          = "comment_extractor"
  spec.version       = CommentExtractor::VERSION
  spec.authors       = ["colorbox"]
  spec.email         = ["colorbox222@gmail.com"]

  spec.summary       = %q{extract comment from ruby code.}
  spec.description   = %q{You can extract comments from ruby codes.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject{ |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "parser"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
