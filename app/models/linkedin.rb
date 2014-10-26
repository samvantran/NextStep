
require './config/environment.rb'

class LinkedInSession
  attr_reader :b, :s
# create User, log into LinkedIn

  def work_magic
    login_to_linkedin
    search_for_alumni
    scrape_for_gold
    display_data
  end

  def login_to_linkedin
    @b = Watir::Browser.new
    b.goto "https://linkedin.com"
    b.text_field(:id => 'session_key-login').set 'alrichards80@outlook.com'
    b.text_field(:id => 'session_password-login').set 'applepies!'
    sleep 1 + rand(1..10)/50
    b.input(:id => 'signin').click      # and we're in!
  end

  def search_for_alumni(company = "flatiron school")
    sleep 2.5 + rand(1..10)/50
    b.text_field(:id => 'main-search-box').when_present.set "\"#{company}\""
    b.button(:name => 'search').click
  end

    # check for next page
  def scrape_for_gold
    @s = InfoScraper.new
    while b.link(:title => "Next Page").exists?
      s.scrape(b.html)
      b.link(:title => "Next Page").click
      sleep 1.2 + rand(1..10)/50              # sleep and click next
    end
    s.scrape(b.html)                        # last scrape for last page
    @s
  end

  def display_data
  binding.pry
  end
end

 # def get_html_from_LI
 #    session = ScrapeDriver.new
 #    log_in_to_supermechanical_site(session)
 #    html = session.html
 #    session.driver.quit
 #    return html
 #  end

 #  def log_in_to_LI(session)
 #    session.visit 'https://twine.cc/login?next=%2F'
 #    session.fill_in 'email', :with => self.email
 #    session.fill_in 'password', :with => "33west26"
 #    sleep 1 + rand(1..10)/50
 #    session.click_button 'signin'
 #    sleep 5
 #  end

#   end

#   def search_for_alumni
#     # start the search!!
#     b.text_field(:id => 'main-search-box').set 'flatiron school'
#     sleep 1 + rand(1..10)/50
#     b.button(:name => 'search').click
#   end

# end