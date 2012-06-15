require 'ysd-plugins' unless defined?Plugins::Plugin
require 'ysd_plugin_rca_extension'

Plugins::SinatraAppPlugin.register :rca do

   name=        'rca'
   author=      'yurak sisa'
   description= 'Add resource access control'
   version=     '0.1'
   hooker       Huasi::ResourceAccessControlExtension
   sinatra_extension Sinatra::ResourceAccessControl
end

