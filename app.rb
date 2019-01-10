require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/puppy' do
    @name = Puppy.new.name
    @breed = Puppy.new.breed
    @age = Puppy.new.breed
    erb :display_puppy
  end

end
