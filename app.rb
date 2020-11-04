require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "no_one_knows_the_meaning_of_this_2020"
    end

    get "/" do
        erb :index
    end

    post "/checkout" do
        session["item"] = params["item"]
        @session = session
        erb :checkout
    end
end