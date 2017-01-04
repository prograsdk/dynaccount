$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dynaccount/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dynaccount"
  s.version     = Dynaccount::VERSION
  s.authors     = ["Frederik Spang"]
  s.email       = ["frederik@frederikspang.dk"]
  s.homepage    = "https://dynaccount.com"
  s.summary     = "The dynaccount gem is an module-based integration for Dynaccount"
  s.description = "The dynaccount gem is an module-based integration for Dynaccount, with the classic ActiveRecord structure, find, all etc."
  s.license     = "MIT"

  s.add_runtime_dependency 'json', '~> 2.0'
  s.add_runtime_dependency 'faraday', '~> 0.10'

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

end
