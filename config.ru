require 'rubygems'
require 'sinatra'
require './app.rb'

set :environment, (ENV['RACK_ENV'] || :development)

run Sinatra::Application

