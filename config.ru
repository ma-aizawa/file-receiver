require 'rubygems'
require 'sinatra'
require './app.rb'

set :environment, (ENV['RACK_ENV'] || :development)
set :bind, '0.0.0.0'

run Sinatra::Application

