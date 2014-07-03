require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec')

# If you want to make this the default task
task :default => :spec

task :console do
  require 'irb'
  require 'irb/completion'
  require 'active_record'
  require 'scopelist'
  ARGV.clear
  IRB.start
end
