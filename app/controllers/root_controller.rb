class RootController < ApplicationController
  
  get '/' do
    # erb :index
    erb :homepage
  end

  get '/index' do
    redirect 'index.html'
  end

  post '/make-magic' do 
    run_session = LinkedInSession.new
    @s = run_session.work_magic
    erb :index
  end

  get '/flatiron_circles' do
    erb :index
  end

end
