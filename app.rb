require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    'Hello hello!'
  end

  run! if app_file == $0
end
