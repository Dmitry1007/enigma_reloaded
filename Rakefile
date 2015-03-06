require 'rake/testtask'
 
# Rake::TestTask.new do |t|
#   t.pattern = "test/**/*_test.rb"     # This expects your tests to be inside a test subfolder
# end                                   # and end with '_test.rb`
        

task :test do
 Dir.glob('./test/**/*_test.rb') { |file| require file }
end                    