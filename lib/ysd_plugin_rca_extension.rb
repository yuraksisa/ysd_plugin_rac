require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Huasi Profile Extension
#
module Huasi

  class ResourceAccessControlExtension < Plugins::ViewListener
    include ContentManagerSystem::Support
    #
    # Information
    #
    def content_element_info(context={})
      app = context[:app]
      {:id => 'rca', :description => "#{app.t.rca.description}"} 
    end

    #
    # Renders the tab
    #
    def content_element_form_tab(context={})
      app = context[:app]
      info = content_element_info(context)
      render_tab("#{info[:id]}_form", info[:description])
    end

    #
    # Add fields to edit the photo information in the content form
    #
    def content_element_form(context={})
      
      app = context[:app]
      
      renderer = UIFieldSetRender::FieldSetRender.new('resourceaccesscontrol', app)      
      contact_form = renderer.render('form', 'em')    
      
    end

    #
    # Support to edit the photo information in the content form
    #
    def content_element_form_extension(context={})
    
      app = context[:app]
    
      renderer = UIFieldSetRender::FieldSetRender.new('resourceaccesscontrol', app)      
      contact_form_extension = renderer.render('formextension', 'em')
              
    end
        
    #
    # Renders the tab
    #
    def content_element_template_tab(context={})
      app = context[:app]
      info = content_element_info(context)
      render_tab("#{info[:id]}_template", info[:description])
    end    
    
    #
    # Show the element
    #
    def content_element_template(context={})
    
       app = context[:app]
    
       renderer = UIFieldSetRender::FieldSetRender.new('resourceaccesscontrol', app)      
       contact_template = renderer.render('view', 'em')
                
    end
    
  end
end