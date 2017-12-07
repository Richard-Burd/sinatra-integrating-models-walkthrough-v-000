ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'

# You need this line below to get the list of default rake tasks
# from active record to actually work in your workspace
require "sinatra/activerecord/rake"

# Type `rake -T` on your command line to see the available rake tasks.

desc "Enter the console and explore the program"
task :console do
  Pry.start
end
