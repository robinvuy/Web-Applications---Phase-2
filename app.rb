require 'sinatra/base'
require "sinatra/reloader"


class Application < Sinatra::Base 
  configure :development do
    register Sinatra::Reloader
  end
  
  get '/hello' do
    return erb(:index)
  end


  post '/sort-names' do
    name = params[:names].split(",")
    return name.sort.join(",")
  end

  get '/names' do
    return "Julia, Mary, Karim"

  end



end
  
  
  
  
  
  
  
  
  
  
  
  
  

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