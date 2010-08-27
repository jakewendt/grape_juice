# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jakewendt-grape_juice}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jake"]
  s.date = %q{2010-08-26}
  s.default_executable = %q{grape}
  s.description = %q{longer description of your gem}
  s.email = %q{github@jake.otherinbox.com}
  s.executables = ["grape"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "lib/grape_juice.rb",
     "templates/grape.rb"
  ]
  s.homepage = %q{http://github.com/jakewendt/grape_juice}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{one-line summary of your gem}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 2.3.8"])
    else
      s.add_dependency(%q<rails>, [">= 2.3.8"])
    end
  else
    s.add_dependency(%q<rails>, [">= 2.3.8"])
  end
end

