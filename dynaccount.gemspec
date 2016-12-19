$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dynaccount/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dynaccount"
  s.version     = Dynaccount::VERSION
  s.authors     = ["Frederik Spang"]
  s.email       = ["frederik@frederikspang.dk"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Dynaccount."
  s.description = "TODO: Description of Dynaccount."
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

end
