# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrapper/rails/version"

Gem::Specification.new do |s|
  s.name        = "bootstrapper"
  s.version     = Bootstrapper::Rails::VERSION
  s.author      = "Mike Ruby"
  s.email       = "emikebr@gmail.com"
  s.homepage    = "https://github.com/MikeRuby/bootstrapper"
  s.summary     = "A Rails 3.1 engine for using Twitter's Bootstrap CSS framework."
  s.description = "A Rails 3.1 engine for using Twitter's Bootstrap CSS framwork for rapid and elegant web appication prototyping."

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.6"
  
  s.extra_rdoc_files = ["README.md"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # s.add_runtime_dependency "rest-client"
  s.add_runtime_dependency "railties", "~> 3.0.0"
  s.add_development_dependency "bundler", "~> 1.0.0"
  # s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rails", "~> 3.0.0"
  
  s.post_install_message = %Q{
  Thank you for installing Bootstrapper - #{Bootstrapper::Rails::VERSION} for Rails 3.1!
  The current version used of Twitter Bootstrap is #{Bootstrapper::Rails::BOOTSTRAP_VERSION}
    
  Bootstrap is Twitter's toolkit for kickstarting CSS for websites, apps, and more. It includes base CSS styles for typography, forms, buttons, tables, grids, navigation, alerts, and more.

  To get started -- checkout http://twitter.github.com/bootstrap
  }
end
