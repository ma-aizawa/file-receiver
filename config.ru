require 'rubygems'
require 'sinatra'
require './app.rb'
set :environment, :production
set :bind, '0.0.0.0'

run Sinatra::Application

