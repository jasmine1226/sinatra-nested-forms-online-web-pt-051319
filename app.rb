require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"]["name"], params["pirate"]["weight"], params["pirate"]["height"])
      @ship1 = Ship.new(params["pirate"]["ships"][0])
      @ship2 = Ship.new(params["pirate"]["ships"][1])
      erb :'pirates/show'
    end

  end
end
