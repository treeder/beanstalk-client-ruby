require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name        = "beanstalk-client"
    gem.summary     = "Ruby client for beanstalkd"
    gem.description = "Ruby client for beanstalkd"
    gem.email       = "kr@xph.us"
    gem.homepage    = "http://github.com/kr/beanstalk-client-ruby"
    gem.authors     = ["Keith Rarick"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

task :default => :test
