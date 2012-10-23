require 'renders/ysd_ui_fieldset_render' unless defined?UI::FieldSetRender

module Huasi
  class RCAAspectDelegate
    include ContentManagerSystem::Support

    #
    # Information
    #
    def element_info(context={})
      app = context[:app]
      {:id => 'rca', :description => "#{app.t.rca.description}"} 
    end

    #
    # Renders the tab
    #
    def element_form_tab(context={}, aspect_model)
      app = context[:app]
      info = element_info(context)
      render_tab("#{info[:id]}_form", info[:description])
    end

    #
    # Add fields to edit the photo information in the content form
    #
    def element_form(context={}, aspect_model)
      
      app = context[:app]
      
      renderer = ::UI::FieldSetRender.new('resourceaccesscontrol', app)      
      contact_form = renderer.render('form', 'em')    
      
    end

    #
    # Support to edit the photo information in the content form
    #
    def element_form_extension(context={}, aspect_model)
    
      app = context[:app]
    
      renderer = ::UI::FieldSetRender.new('resourceaccesscontrol', app)      
      contact_form_extension = renderer.render('formextension', 'em')
              
    end
        
    #
    # Renders the tab
    #
    def element_template_tab(context={}, aspect_model)
      app = context[:app]
      info = element_info(context)
      render_tab("#{info[:id]}_template", info[:description])
    end    
    
    #
    # Show the element
    #
    def element_template(context={}, aspect_model)
    
       app = context[:app]
    
       renderer = ::UI::FieldSetRender.new('resourceaccesscontrol', app)      
       contact_template = renderer.render('view', 'em')
                
    end
 
  
  end
end