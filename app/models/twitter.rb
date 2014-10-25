class Twitter
  # belongs_to :user

 def get_html_from_twitter
    session = ScrapeDriver.new
    log_in_to_twitter(session)
    html = session.html
    session.driver.quit
    html
  end

  def login_to_twitter #(session)
    `open 'https://twitter.com'`
    session = ScrapeDriver.new
    session.visit 'https://twitter.com'
    html = session.html
    doc = Nokogiri::HTML(html)
    #session.fill_in 'q', :with => "testing 1 2 3"

    binding.pry

    session.fill_in 'session[username_or_email]', :with => "alrich80"
    session.fill_in 'signin-password', :with => "tapplepie"
    #<input type="password" id="signin-password" class="text-input flex-table-input" name="session[password]" placeholder="Password">
    #<input type="text" id="signin-email" class="text-input email-input" name="session[username_or_email]" autocomplete="on" placeholder="Phone, email or username">
    binding.pry
    # sleep 1 + rand(1..10)/50
    # session.click_button 'submit' #.submit btn primary-btn flex-table-btn js-submit'
    # sleep 5
  end

end


###### THIS IS TRISTAN'S HEATSEEKER STUFF ######

#   def get_temp_from_supermechanical
#     supermech_noko = get_nokogirified_supermechanical_site
#     text_temp = get_temp_from_nokogiri_object(supermech_noko)
#     numberize(text_temp)
#   end

#   def numberize(text_temp)
#       text_temp == "" ? nil : text_temp.to_i
#   end

#   def get_html_from_supermechanical_site
#     session = ScrapeDriver.new
#     log_in_to_supermechanical_site(session)
#     html = session.html
#     session.driver.quit
#     return html
#   end

#   def log_in_to_supermechanical_site(session)
#     session.visit 'https://twine.cc/login?next=%2F'
#     session.fill_in 'email', :with => self.email
#     session.fill_in 'password', :with => "33west26"
#     sleep 1 + rand(1..10)/50
#     session.click_button 'signin'
#     sleep 5
#   end

#   def get_nokogirified_supermechanical_site
#     html = get_html_from_supermechanical_site
#     Nokogiri::HTML(html)
#   end

#   def get_temp_from_nokogiri_object(noko)
#       noko.css(TEMP_SELECTOR).text
#   end

#   def current_outdoor_temp
#     WeatherMan.current_outdoor_temp(user.zip_code)
#   end

#   def make_and_return_reading_from_temp(temp)
#     reading = Reading.new_from_twine(temp, self.current_outdoor_temp, self, self.user)
#     reading.save
#     return reading
#   end
# end