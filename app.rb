require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "chickabean"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

end
