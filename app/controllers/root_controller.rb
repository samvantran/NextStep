class RootController < ApplicationController
  
  get '/' do
    erb :index
  end

  get '/flatiron_alums' do
    # @linkedin_scraper = InfoScraper.new
    erb :flatiron_alums
  end

end
