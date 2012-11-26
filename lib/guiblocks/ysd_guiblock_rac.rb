require 'ui/ysd_ui_fieldset_render' unless defined?UI::FieldSetRender

module GuiBlock

  #
  # Gui block for resource access control
  #
  class ResourceAccessControl    

    #def weight
    #  100
    #end

    #def in_group
    #  true
    #end

    #def show_on_new
    #  false
    #end

    #def show_on_edit
    #  true
    #end

    #def show_on_view
    #  true
    #end

    #def get_aspect_definition(context={})
    #  return self
    #end

    attr_reader :resource

    def initialize(resource)
      @resource = resource
    end

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
      
      if resource.can_write?(app.user) and (not app.user.belongs_to?('anonymous'))
        info = element_info(context)
        app.render_tab("#{info[:id]}_form", info[:description])        
      else
        ''
      end

    end

    #
    # Add fields to edit the photo information in the content form
    #
    def element_form(context={}, aspect_model)
      
      app = context[:app]

      if resource.can_write?(app.user) and (not app.user.belongs_to?('anonymous'))
        renderer = ::UI::FieldSetRender.new('resourceaccesscontrol', app)      
        renderer.render('form', 'em') 
      else      
        ''
      end

    end

    #
    # Support to edit the photo information in the content form
    #
    def element_form_extension(context={}, aspect_model)
    
      app = context[:app]

      if resource.can_write?(app.user) and (not app.user.belongs_to?('anonymous'))
        renderer = ::UI::FieldSetRender.new('resourceaccesscontrol', app)      
        renderer.render('formextension', 'em')      
      else       
        ''
      end

    end
        
    #
    # Renders the tab
    #
    def element_template_tab(context={}, aspect_model)
      
      app = context[:app]

      if resource.can_write?(app.user) and (not app.user.belongs_to?('anonymous'))
        info = element_info(context)
        app.render_tab("#{info[:id]}_template", info[:description])
      else
        ''
      end

    end    
    
    #
    # Show the element
    #
    def element_template(context={}, aspect_model)
    
       app = context[:app]
       
       if resource.can_write?(app.user) and (not app.user.belongs_to?('anonymous'))
         renderer = ::UI::FieldSetRender.new('resourceaccesscontrol', app)      
         contact_template = renderer.render('view', 'em')
       else       
         ''
       end

    end
 
  
  end
end