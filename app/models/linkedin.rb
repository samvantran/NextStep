 

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