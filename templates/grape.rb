require 'grape_juice'

# cat /usr/lib/ruby/user-gems/1.8/gems/rails-2.3.8/lib/rails_generator/generators/applications/app/template_runner.rb

#puts "In Template"
#puts "Command Line"
#puts $command_line.inspect
#	=> ["-d", "mysql", "testin"]
#
#puts "app_name"
#puts $app_name
#	=> testin

#	CREATE .gitignore
file ".gitignore", <<-END
.DS_Store
log/*.log
tmp/**/*
db/*.sqlite3
versions
END


#	For the 'Ruby Gem'
#	Modified rake file
#	VERSION

#	APPEND Rakefile
append_file 'Rakefile',<<-END
begin
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		gem.name = "#{$app_name}"
		gem.summary = %Q{one-line summary of your gem}
		gem.description = %Q{longer description of your gem}
		gem.email = "insert_your_email@here.com"
		gem.homepage = "insert_a_url_here"
		gem.authors = ["insert your name here"]
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

rake "version:write"


#	For the 'Rails Plugin'
#	create init.rb, install.rb, uninstall.rb rails/init.rb
file "init.rb", <<-END
require 'rails/init'
END

file "install.rb", <<-END
END

file "uninstall.rb", <<-END
END

file 'rails/init.rb', <<-END
require '#{$app_name}'
END

file "lib/#{$app_name}.rb", <<-END
END

inside "lib/#{$app_name}" do
end

