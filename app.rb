require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    new_pup = Puppy.new(name = params[:name], breed = params[:breed], age = params[:age])
    @name = params["name"]
    @breed = params["breed"]
    @age = params["age"]
    erb :display_puppy
  end


end