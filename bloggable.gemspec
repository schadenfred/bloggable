$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bloggable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bloggable"
  s.version     = Bloggable::VERSION
  s.authors     = ["schadenfred"]
  s.email       = ["fred.schoeneman@gmail.com"]
  s.homepage    = "https://github.com/schadenfred/bloggable"
  s.summary     = "polymorphic blog."
  s.description = "Add a blog to orgs or users or whatever"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "test/factories/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
  s.add_dependency "jquery-ui-rails"
  s.add_dependency "haml-rails"
  s.add_dependency "redcarpet"
  s.add_dependency "simple_form"
  s.add_dependency "friendly_id"
  s.add_dependency "aasm"
  s.add_dependency "devise"


  s.add_dependency "factory_girl_rails"
  s.add_dependency "byebug"

  # development & testing
  s.add_development_dependency "minitest-rails-capybara"
  s.add_development_dependency "minitest-given"
  s.add_development_dependency "launchy"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-minitest"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "guard-livereload"
  s.add_development_dependency "better_errors"
  s.add_development_dependency "binding_of_caller"

  s.add_development_dependency "pg"
end
