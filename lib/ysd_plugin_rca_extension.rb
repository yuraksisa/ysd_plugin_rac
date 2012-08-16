require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Huasi Profile Extension
#
module Huasi

  class ResourceAccessControlExtension < Plugins::ViewListener
    include ContentManagerSystem::Support

    # ========= Aspects ==================
    
    #
    # Manages the resource access control
    #
    # The attachment aspect (complement)
    #
    def aspects(context={})
      
      app = context[:app]
      
      aspects = []
      aspects << ::Plugins::Aspect.new(:permission, app.t.aspect.rca, [:entity], RCAAspectDelegate.new)
                                               
      return aspects
       
    end 
    
  end
end