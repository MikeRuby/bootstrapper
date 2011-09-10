# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrapper/version"

Gem::Specification.new do |s|
  s.name        = "bootstrapper"
  s.version     = Bootstrapper::VERSION
  s.authors     = ["Mike Ruby"]
  s.email       = ["emikebr@gmail.com"]
  s.homepage    = "http://mikeruby.tumblr.com/"
  s.description = %q{A Rails 3.1 engine for generating default layouts and styles using Twitter Bootstrap}

  s.rubyforge_project = "bootstrapper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
