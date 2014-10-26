
require './config/environment.rb'

class LinkedInSession
  attr_reader :b, :s

  def work_magic
    login_to_linkedin
    search_for_alumni
    scrape_for_gold
    sort_data
    # binding.pry
  end

  def login_to_linkedin
    @b = Watir::Browser.new :firefox, :profile => 'default'
    b.goto "https://linkedin.com"
    sleep 2
    b.text_field(:id => 'session_key-login').set 'alrichards80@outlook.com'
    b.text_field(:id => 'session_password-login').set 'applepies!'
    sleep 1 + rand(1..10)/50
    b.input(:id => 'signin').click      # and we're in!
  end

  def search_for_alumni(company = "The Flatiron School")
    sleep 2 + rand(1..10)/50
    b.text_field(:id => 'main-search-box').when_present.set "\"#{company}\""
    b.button(:name => 'search').click
    sleep 2.5
    b.legend(:data_li_trk_code => 'vsrp_people_facet_label_PC').when_present.click
    sleep 2
    b.input(:id => /\d+-PC/).click
  end

  def scrape_for_gold
    @s = InfoScraper.new
    sleep 1.5
    9.times do
      # b.link(:title => "Next Page").exists? (LinkedIn caps 100 max profile views)
      s.scrape(b.html)
      b.link(:title => "Next Page").click
      sleep 1.2 + rand(1..10)/50
    end
    s.scrape(b.html) # one last time
  end

  def sort_data
    @s.sort_title_frequency
    @s.sort_company_frequency
    @s.sort_industry_frequency
    @s.sort_location_frequency
    @s
  end
end