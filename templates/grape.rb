require 'grape_juice'

# cat /usr/lib/ruby/user-gems/1.8/gems/rails-2.3.8/lib/rails_generator/generators/applications/app/template_runner.rb

puts "In Template"
puts "Command Line"
puts $command_line.inspect

puts "app_name"
puts $app_name

#	Plugin
#	create init.rb, install.rb, uninstall.rb rails/init.rb

#	CREATE .gitignore
file ".gitignore", <<-END
.DS_Store
log/*.log
tmp/**/*
db/*.sqlite3
versions
END

#	APPEND Rakefile
append_file 'Rakefile',<<-END
begin
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		gem.name = "jakewendt-grape_juice"
		gem.summary = %Q{one-line summary of your gem}
		gem.description = %Q{longer description of your gem}
		gem.email = "github@jake.otherinbox.com"
		gem.homepage = "http://github.com/jakewendt/grape_juice"
		gem.authors = ["George 'Jake' Wendt"]
		# gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
#
#		gem.files = FileList['lib/**/*.rb','bin/**/*.rb','templates/**/*.rb']
#		gem.test_files = []
#
#		gem.add_dependency('jeweler')
#		gem.add_dependency('rails', '>= 2.3.8')
#
#		gem.default_executable = %q{grape}
#		gem.executables = ["grape"]
#
	end
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
END




#	Gem
#	Modified rake file
#	VERSION

#	may not work if not in git repo?
rake "version:write"
