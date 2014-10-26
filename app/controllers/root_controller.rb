class RootController < ApplicationController
  
  get '/' do
    erb :index
  end

  get '/flatiron_circles' do
    erb :flatiron_circles
  end

end
