ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

namespace :db do
  desc 'drop into the Pry console'
  task :console => :environment do
    Pry.start
  end
end
