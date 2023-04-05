require 'sinatra/base'


class Application < Sinatra::Base 
  get '/names' do
    return "Julia, Mary, Karim"

  end

end
  
  
  
  
  
  
  
  
  
  
  
  
  # get '/hello' do
  #   name = params[:name]
  #   return "Hello #{name}"
  # end

  # post '/submit' do
  #   name = params[:name]
  #   message = params[:message]
  #   return "Thanks #{name}, you sent this messsage: \"#{message}\""
  # end

  #get '/postss' do
    #return 'List of posts!'
  #end

  #post '/posts' do
    #return 'Post was created!'
  #end
#end