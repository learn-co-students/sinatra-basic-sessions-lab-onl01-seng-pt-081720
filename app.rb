require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "masr"
      end

      get '/' do
        erb :index
      end

      get '/hey' do 
        @session = session
      end

      post '/checkout' do
        item=params["item"]
        session["item"]=item
        @session = session
        
      end
      
end