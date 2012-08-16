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
    def element_form_tab(context={})
      app = context[:app]
      info = element_info(context)
      render_tab("#{info[:id]}_form", info[:description])
    end

    #
    # Add fields to edit the photo information in the content form
    #
    def element_form(context={})
      
      app = context[:app]
      
      renderer = UIFieldSetRender::FieldSetRender.new('resourceaccesscontrol', app)      
      contact_form = renderer.render('form', 'em')    
      
    end

    #
    # Support to edit the photo information in the content form
    #
    def element_form_extension(context={})
    
      app = context[:app]
    
      renderer = UIFieldSetRender::FieldSetRender.new('resourceaccesscontrol', app)      
      contact_form_extension = renderer.render('formextension', 'em')
              
    end
        
    #
    # Renders the tab
    #
    def element_template_tab(context={})
      app = context[:app]
      info = element_info(context)
      render_tab("#{info[:id]}_template", info[:description])
    end    
    
    #
    # Show the element
    #
    def element_template(context={})
    
       app = context[:app]
    
       renderer = UIFieldSetRender::FieldSetRender.new('resourceaccesscontrol', app)      
       contact_template = renderer.render('view', 'em')
                
    end
 
  
  end
end