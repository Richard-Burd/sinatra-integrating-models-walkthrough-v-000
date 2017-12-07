require './config/environment'

module FormsLab
  class App2 < Sinatra::Base

    get '/pirates/new' do

      erb :'pirates/new'
    end

    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])
      erb :'pirates/show'
    end

    get '/pirates' do
      @pirates = Pirate.all
      erb :'pirates/index'
    end

    post '/pirates' do #the convention is to send it to the plural
      pirate = Pirate.create(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
        ship.pirate = pirate
        ship.save
      end
      redirect to "/pirates/#{pirate.id}"
    end
  end
end
