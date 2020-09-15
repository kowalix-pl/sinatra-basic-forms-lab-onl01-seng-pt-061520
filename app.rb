require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end
  
  post '/puppy' do 
    @params = params
    @puppy = Puppy.new(params)
    # @puppy.name = Puppy.params[:name]
    # @puppy.breed = Puppy.params[:breed]
    # @puppy.age = Puppy.params[:age]
    erb :display_puppy
    
  end
binding.pry
 

end
