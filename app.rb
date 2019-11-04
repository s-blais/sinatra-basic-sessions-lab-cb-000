require_relative 'config/environment'

# is this where this belongs? or inside App?
configure do
  enable :sessions
  set :session_secret, "chickabean"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end


  post '/checkout' do
# binding.pry
    session["item"] = params[:item]
    @session = session
    erb :display

  end

end
