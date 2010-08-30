require 'grape_juice'

# cat /usr/lib/ruby/user-gems/1.8/gems/rails-2.3.8/lib/rails_generator/generators/applications/app/template_runner.rb

app_name = self.root.split('/').last


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
coverage
coverage.data
db/*.sqlite3
db/*.sqlite3-journal
/config/database.yml
/config/initializers/mail.rb
/config/initializers/session_store.rb
/config/fed_ex.yml
/config/s3.yml
END

run "cp config/database.yml config/database.yml.example"
run "cp config/initializers/mail.rb config/initializers/mail.rb.example"
run "cp config/initializers/session_store.rb config/initializers/session_store.rb.example"


#	For the 'Ruby Gem'
#	Modified rake file
#	VERSION

#	APPEND Rakefile
append_file 'Rakefile',<<-END
begin
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		gem.name = "#{app_name}"
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
require '#{app_name}'
END

file "lib/#{app_name}.rb", <<-END
module #{app_name.camelize}
#	predefine assumed namespace
end
# From http://guides.rubyonrails.org/plugins.html#controllers
# Fix for:
# ArgumentError in _some_Controller#_some_action_
# A copy of ApplicationController has been removed from the module tree but is still active!
# Equivalent of using "unloadable" in _some_Controller (unloadable has been deprecated)
%w{models controllers}.each do |dir|
  path = File.expand_path(File.join(File.dirname(__FILE__), '../app', dir))
  ActiveSupport::Dependencies.load_once_paths.delete(path)
end
END

inside "lib/#{app_name}" do
end

