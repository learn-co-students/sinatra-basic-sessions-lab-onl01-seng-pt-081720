require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :sessions_secret, "orange"
    end

    get '/' do
        @session = session
        erb :index
    end
    
    post '/checkout' do
        #binding.pry
        @orange = session
        session[:item] = params[:item]
    end
end