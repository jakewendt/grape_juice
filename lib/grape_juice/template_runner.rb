module GrapeJuice
module TemplateRunner
end
end
Rails::TemplateRunner.send(:include,GrapeJuice::TemplateRunner)
puts "Loaded TemplateRunner"
