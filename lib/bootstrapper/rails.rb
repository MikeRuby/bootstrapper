module Pootstrapper
  module Rails
    
    if ::Rails.version < "3.1"
      require "bootstrapper/rails/railtie"
    else
      require "bootstrapper/rails/engine"
    end
    
    require "bootstrapper/rails/version"
    
  end
end