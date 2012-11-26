require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Huasi Profile Extension
#
module Huasi

  class ResourceAccessControlExtension < Plugins::ViewListener
    include ContentManagerSystem::Support
    
  end
end