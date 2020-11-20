require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :sessions_secret, "orange"
    end

    get '/' do
        erb :index
    end
    
    post '/checkout' do
        #binding.pry
        session[:item] = params[:item]
        @session = session
    end
end