Gem::Specification.new do |s|
  s.name    = "ysd_plugin_rca"
  s.version = "0.1"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2012-06-14"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb','views/**/*.erb','i18n/**/*.yml','static/**/*.*'] 
  s.description = "CMS extension to manage resource access control in content"
  s.summary = "CMS extension to manage resource access control in content"
  
  s.add_runtime_dependency "ysd_core_plugins"
  s.add_runtime_dependency "ysd_md_fieldset"
  s.add_runtime_dependency "ysd_yito_core"  
  
end
