require "rubygems"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  #t.test_files = FileList["test/**/*_test.rb"]
  t.test_files = FileList["test//mini_test.rb"]
end
task :default => :test

#To Run Test
#$rake test#
