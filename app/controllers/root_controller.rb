class RootController < ApplicationController
  
  get '/' do
    erb :homepage
  end

  get '/test' do
    @run_session = LinkedInSession.new("The Flatiron School", false)
    @s = Seed.new
    erb :"display_magic.html"
  end

  get '/make-magic' do 
    @run_session = LinkedInSession.new("The Flatiron School")
    @s = @run_session.work_magic
    erb :"display_magic.html"
  end

  post '/rerun-magic' do
    binding.pry
    @run_session = LinkedInSession.new(params[:company_name], false)
    @s = @run_session.work_magic
    erb :"display_magic.html"
  end

end
