require 'capybara/poltergeist'

class ScrapeDriver < DelegateClass(Capybara::Session)
  CHROME_AGENT = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) 
  AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36"

  def initialize()
    Capybara.register_driver :chrome_like do |app|  
      Capybara::Poltergeist::Driver.new(app).tap do |driver|
        driver.add_header("user-agent", CHROME_AGENT)
      end
    end

    @actor = Capybara::Session.new(:chrome_like)
    super(@actor)
  end 

end