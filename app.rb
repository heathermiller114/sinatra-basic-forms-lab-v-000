require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/new' do
    @puppy_info = Puppy.new(params[:name, :breed, :age])
    erb :create_puppy
  end
  
  post '/puppy' do
    
    erb :display_puppy
  end

end
