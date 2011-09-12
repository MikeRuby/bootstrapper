require "rails"

if ::Rails.version < "3.1"
  module Bootstrapper
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
        
        desc "This generator installs Twitter Bootstrap #{Bootstrapper::Rails::VERSION} CSS Framerwork into a Rails 3 app."
        source_root File.expand_path('../../../../../vendor/assets/stylesheets', __FILE__)
        
        def copy_bootstrap
          say_status("copying", "Twitter Bootstrap #{Bootstrapper::Rails::BOOTSTRAP_VERSION}", :green)
          copy_file "bootstrap.css", "public/stylesheets/bootstrap.css"
          copy_file "bootstrap.min.css", "public/stylesheets/bootstrap.min.css"
        end
        
      end
    end
  end
else
  module Bootstrapper
    module Generators
      class InstallGenerator < ::Rails::Generators::Base
      
        def do_nothing
          say_status("deprecated", "You are using Rails 3.1, so this generator is no longer needed. The necessary files are already in your asset pipeline.")
          say_status("", "Just add `//= require bootstrap` or `//= require bootstrap.min` to your app/assets/stylesheets/application.css")
        end
        
      end
    end
  end
end