class RootController < ApplicationController
  
  get '/' do
    # erb :index
    erb :homepage
  end

  post '/make-magic' do 
    run_session = LinkedInSession.new
    @s = run_session.work_magic
    erb :magic_display
  end

  get '/flatiron_circles' do
    erb :flatiron_circles
  end

end
