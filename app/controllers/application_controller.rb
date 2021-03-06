require './config/environment'
require 'sinatra/base'
require 'rack-flash'

class ApplicationController < Sinatra::Base

  Rack::MethodOverride

  configure do
   set :public_folder, 'public'
   set :views, 'app/views'
  end

 configure do
   enable :sessions
   set :session_secret, "secret"
 end

 get '/' do
   erb :index
 end

end
