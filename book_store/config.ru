require 'pry'
require 'sinatra'
require 'mysql2'
require './book_store'

use Rack::MethodOverride

run BookStore