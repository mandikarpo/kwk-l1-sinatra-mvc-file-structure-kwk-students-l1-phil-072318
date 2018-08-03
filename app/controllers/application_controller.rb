class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
  
  get '/guncontrol'do 
    erb :guncontrol_form 
  end 

  get '/equality' do 
    erb :equality_form
  end 
  
  
  post '/' do
    @myresult = guncontrol(params[:question1])
    erb :result
  end

  post '/' do 
    @myresult = equality(params[:quesiton1])
  end
  
end

