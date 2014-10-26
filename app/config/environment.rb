require 'bundler/setup'
Bundler.require

require 'json'
require 'uri'
require 'pry'
require 'rspec'
require 'poltergeist'
require 'capybara'
require 'capybara/rspec'
#stuff i found from stackoverflow
require 'rubygems'
require 'capybara/dsl'
require 'capybara/poltergeist'




# Dir[File.join(File.dirname(__FILE__), "../../lib", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../models", "*.rb")].each {|f| require f}


# require 'bundler/setup'
# Bundler.require

# ENV['SINATRA_ENV'] ||= "development"

# ActiveRecord::Base.establish_connection(
#   :adapter => "sqlite3",
#   :database => "db/halloween_#{ENV['SINATRA_ENV']}.sqlite"
# )

# Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
# Dir[File.join(File.dirname(__FILE__), "../app/controllers", "*.rb")].each {|f| require f}