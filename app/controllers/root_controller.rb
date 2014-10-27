class RootController < ApplicationController
  
  get '/' do
    erb :homepage
  end

  get '/test' do
    @s = Seed.new
    erb :"display_magic.html"
  end

  post '/make-magic' do 
    run_session = LinkedInSession.new
    @s = run_session.work_magic
    erb :"display_magic.html"
  end

end
