require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "flatiron lab"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    binding.pry
    @sessions = session
  end

end
