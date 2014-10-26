require './config/environment.rb'
require 'pry'
require 'sinatra'

use ApplicationController
run RootController