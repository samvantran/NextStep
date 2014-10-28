class RootController < ApplicationController
  
  get '/' do
    erb :homepage
  end

  get '/test' do
    @s = Seed.new
    erb :"display_magic.html"
  end

  get '/make-magic' do 
    @s = LinkedInSession.new("The Flatiron School").work_magic
    erb :"display_magic.html"
  end

  post '/rerun-magic' do
    @s = LinkedInSession.new(params[:company_name]).work_magic
    erb :"display_magic.html"
  end

end
