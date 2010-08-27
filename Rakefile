require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		gem.name = "jakewendt-grape_juice"
		gem.summary = %Q{one-line summary of your gem}
		gem.description = %Q{longer description of your gem}
		gem.email = "github@jake.otherinbox.com"
		gem.homepage = "http://github.com/jakewendt/grape_juice"
		gem.authors = ["Jake"]
		# gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings

		gem.files = FileList['lib/**/*.rb','bin/**/*.rb','templates/**/*.rb']
		gem.test_files = []
		gem.add_dependency('rails', '>= 2.3.8')

		gem.default_executable = %q{grape}
		gem.executables = ["grape"]

	end
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

#	
#	desc 'Default: run unit tests.'
#	task :default => :test
#	
#	desc 'Test the stringify_date plugin.'
#	Rake::TestTask.new(:test) do |t|
#		t.libs << 'lib'
#		t.pattern = 'test/**/*_test.rb'
#		t.verbose = true
#	end
#	
#	desc 'Generate documentation for the stringify_date plugin.'
#	Rake::RDocTask.new(:rdoc) do |rdoc|
#		rdoc.rdoc_dir = 'rdoc'
#		rdoc.title		= 'StringifyDate'
#		rdoc.options << '--line-numbers' << '--inline-source'
#		rdoc.rdoc_files.include('README')
#		rdoc.rdoc_files.include('lib/**/*.rb')
#	end
