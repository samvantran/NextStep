class RootController < ApplicationController
  
  resources :index

  get '/' do
    # erb :index
    erb :homepage
  end

  get '/index' do
    
  end

  get '/index.html' do
    erb :index
  end

  post '/make-magic' do 
    run_session = LinkedInSession.new
    @s = run_session.work_magic
    erb :magic_display
  end

  get '/flatiron_alums' do
    # @linkedin_scraper = InfoScraper.new
    erb :flatiron_alums
  end

end
