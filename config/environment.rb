require 'bundler/setup'
Bundler.require

require 'watir-webdriver'
require 'nokogiri'
require 'open-uri'

ENV['SINATRA_ENV'] ||= "development"

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
# Dir[File.join(File.dirname(__FILE__), "../../lib", "*.rb")].each {|f| require f}

# ActiveRecord::Base.establish_connection(
#   :adapter => "sqlite3",
#   :database => "db/halloween_#{ENV['SINATRA_ENV']}.sqlite"
# )