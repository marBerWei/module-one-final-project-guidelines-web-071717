require_relative 'config/environment'
require 'sinatra/activerecord/rake'

ActiveRecord::Base.logger = Logger.new(STDOUT)
desc 'starts a console'
task :console do
  Pry.start
end
