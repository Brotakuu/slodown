# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slodown/version'

Gem::Specification.new do |gem|
  gem.name          = "slodown"
  gem.version       = Slodown::VERSION
  gem.authors       = ["Hendrik Mans"]
  gem.email         = ["hendrik@mans.de"]
  gem.description   = %q{Markdown + oEmbed + Sanitize + Syntax Highlighting = the ultimate user input rendering pipeline.}
  gem.summary       = %q{Markdown + oEmbed + Sanitize + Syntax Highlighting = the ultimate user input rendering pipeline.}
  gem.homepage      = "https://github.com/hmans/slodown"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency  'kramdown', '>= 1.5.0'
  gem.add_dependency  'sanitize', '>= 2.0.0'
  gem.add_dependency  'rinku', '>= 1.7.0'
  gem.add_dependency  'ruby-oembed', '>= 0.9.0'

  gem.add_development_dependency 'rspec', '>= 2.12.0'
  gem.add_development_dependency 'rspec-html-matchers'
  gem.add_development_dependency 'rake'
end
