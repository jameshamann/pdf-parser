
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pdf/parser/version"

Gem::Specification.new do |spec|
  spec.name          = "pdf-parser"
  spec.version       = Pdf::Parser::VERSION
  spec.authors       = ["James Hamann"]
  spec.email         = ["jameshamann@me.com"]

  spec.summary       = %q{A RubyGem that Parses XFA/Acroform PDFs and returns the form's XML contents.}
  spec.description   = %q{This RubyGem is intended to be used with Adobe XFA/Acroform PDFs and relies heavily on both Nokogiri and Origami. It returns an XML object, that can be used throughout your application. }
  spec.homepage      = "https://github.com/jameshamann/pdf-parser"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "origami"
  spec.add_runtime_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
