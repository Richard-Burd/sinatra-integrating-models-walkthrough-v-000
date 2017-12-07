ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
  )

# /////////////////////////
require 'sinatra/base'
#require 'sinatra/reloader' this one makes an error
  # these are in the video (4:41 / 1:49:13) for some reason:
  # https://learn.co/tracks/full-stack-web-development-v3/sinatra/forms/lab-review-sinatra-nested-forms-lab-pirates
  # https://www.youtube.com/watch?time_continue=7&v=kgHN11dQ3H0
require_all './app'
# /////////////////////////

require './app'

# These requirements are for the new files I created as I
# follow along with the "sinatra nested forms pirates" video here:
# https://www.youtube.com/watch?time_continue=7&v=kgHN11dQ3H0
# @ 31:00 of 1:49:13
require_relative '../app/models/pirate.rb'
