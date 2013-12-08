$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ghost_train/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ghost_train"
  s.version     = GhostTrain::VERSION
  s.authors     = ["Graham Jenson"]
  s.email       = ["grahamjenson@maori.geek.nz"]
  s.homepage    = ""
  s.summary     = ""
  s.description = ""

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4"
  
  s.add_dependency 'haml-rails'
  s.add_dependency 'handlebars_assets'
  s.add_dependency "handlebars-rails"
  s.add_dependency 'sass-rails', '~> 4.0.0'
  s.add_dependency 'bourbon'

  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "faker"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "carrierwave"

  s.add_development_dependency "sqlite3"
end
