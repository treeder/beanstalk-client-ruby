# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{beanstalk-client}
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Keith Rarick}]
  s.date = %q{2011-08-10}
  s.description = %q{Ruby client for beanstalkd}
  s.email = %q{kr@xph.us}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "beanstalk-client.gemspec",
    "lib/beanstalk-client.rb",
    "lib/beanstalk-client/connection.rb",
    "lib/beanstalk-client/errors.rb",
    "lib/beanstalk-client/job.rb",
    "lib/beanstalk-client/version.rb",
    "test/helper.rb",
    "test/test_beanstalk-client.rb",
    "website/index.txt",
    "website/javascripts/rounded_corners_lite.inc.js",
    "website/stylesheets/screen.css",
    "website/template.rhtml"
  ]
  s.homepage = %q{http://github.com/kr/beanstalk-client-ruby}
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Ruby client for beanstalkd}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

