require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!"
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      #binding.pry
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all
      #binding.pry
      erb :"pirates/show"
    end    
  end
end
