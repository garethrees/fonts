require 'sinatra/base'
require 'fistface'

class Fonts < Sinatra::Base
  register Sinatra::FistFace
  set :root, File.dirname(__FILE__)

  get '/' do
    erb :index
  end
end