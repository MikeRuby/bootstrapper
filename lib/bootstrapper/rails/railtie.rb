module Bootstrapper
  module Rails
    
    class Railtie < ::Rails::Railtie
      config.before_configuration do
        if ::Rails.root.join("public/stylesheets/bootstrap.css").exist?
          bootstrap_defaults = %w(bootstrap)
          bootstrap_defaults.map!{ |a| a + ".min" } if ::Rails.env.production?
        else
          bootstrap_defaults = ::Rails.env.production? %w(bootstrap.min) : %w(bootstrap)
        end
        
        config.action_view.stylesheet_expansions[:bootstrap] |= boostrap_defaults
      end
    end
    
  end
end