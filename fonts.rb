require 'sinatra/base'
require 'fistface'

class Fonts < Sinatra::Base
  register Sinatra::FistFace

  configure do
    set :root, File.dirname(__FILE__)
    set :app_file, __FILE__
  end

  configure :development do
    enable :logging, :dump_errors, :raise_errors
  end

  configure :production do
    set :raise_errors, false
    set :show_exceptions, false
  end

  get '/' do
    erb :index
  end

end