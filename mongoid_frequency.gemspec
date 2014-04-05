require File.expand_path("../lib/mongoid_frequency/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "mongoid_frequency"
  s.version     = Mongoid::Frequency::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Steve McHail"]
  s.email       = ["mchail@gmail.com"]
  s.homepage    = "http://github.com/perfectaudience/mongoid_frequency"
  s.summary     = "Generate frequency maps using mongodb aggregations"
  s.description     = "Generate frequency maps using mongodb aggregations"

  s.license = 'MIT'

  s.required_rubygems_version = ">= 1.3.6"

  # lol - required for validation
  s.rubyforge_project         = "mongoid_frequency"

  # If you have other dependencies, add them here
  s.add_dependency "mongoid", "~> 3.0"

  s.add_development_dependency "rspec", "~> 2.14"
  s.add_development_dependency "rake"
  s.add_development_dependency "pry"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "database_cleaner"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  # s.executables = ["newgem"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end