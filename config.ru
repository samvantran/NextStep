require './config/environment'
require 'pry'
require 'sinatra'

use ApplicationController
run RootController