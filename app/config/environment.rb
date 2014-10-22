require 'bundler/setup'
Bundler.require

require 'json'
require 'uri'

Dir[File.join(File.dirname(__FILE__), "../../lib", "*.rb")].each {|f| require f}
# Dir[File.join(File.dirname(__FILE__), "../models", "*.rb")].each {|f| require f}