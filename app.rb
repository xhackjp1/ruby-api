# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sqlite3'
require 'json'

ADAPTER = 'sqlite3'
DBFILE  = 'foo.sqlite3'

ActiveRecord::Base.establish_connection(adapter: ADAPTER, database: DBFILE)

class User < ActiveRecord::Base
end

get '/' do
  erb :lesson1
end

get '/api' do
  user = User.first
  user.to_json
end