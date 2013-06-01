require "bundler/gem_tasks"
require "rake/testtask"

desc "Run all tests"
task :test do
  $LOAD_PATH.unshift 'test'
  Dir.glob('./test/**/test_*.rb') {|f| require_relative f }
end

task :default => :test
