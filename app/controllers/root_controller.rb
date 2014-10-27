class RootController < ApplicationController
  
  get '/' do
    # erb :index
    erb :homepage
  end

  get '/index' do
    
  end

  get '/index.html' do
    `open './app/views/index.html.erb'`
  end

  post '/make-magic' do 
    run_session = LinkedInSession.new
    @s = run_session.work_magic
    erb :magic_display
  end

end
