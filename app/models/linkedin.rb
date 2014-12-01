require './config/environment.rb'

class LinkedInSession 
  attr_reader :b, :s, :company_name

  def initialize(company_name)
    @company_name = company_name
  end

  def work_magic
    login_to_linkedin
    search_for_alumni(@company_name)
    scrape_for_gold
    sort_data
    add_geo_data
    close_linkedin
    @s
  end

  def login_to_linkedin
    @b = Watir::Browser.new
    b.goto "https://linkedin.com"
    sleep 1
    b.text_field(:id => 'session_key-login').set 'alrichards80@outlook.com'
    b.text_field(:id => 'session_password-login').set 'applepies!'
    sleep 1 + rand(1..10)/50
    b.input(:id => 'signin').click
  end

  def close_linkedin
    b.close
  end

  def search_for_alumni(company)
    @s = InfoScraper.new(company)
    b.text_field(:id => 'main-search-box').when_present.set "\"#{company}\""
    b.button(:name => 'search').click
    sleep 1.4
    b.legend(:data_li_trk_code => 'vsrp_people_facet_label_PC').when_present.click
    sleep 2
    b.input(:id => /\d+-PC/).click
  end

  def scrape_for_gold
    sleep 1.5
    while b.link(:title => "Next Page").exists?
      s.scrape(b.html)
      b.link(:title => "Next Page").when_present.click
      sleep 1.4 + rand(1..10)/50
    end
  end

  def sort_data
    @s.sort_title_frequency
    @s.sort_company_frequency
    @s.sort_industry_frequency
    @s.sort_location_frequency
  end

  def add_geo_data
    count = 0
    top_location = @s.sorted_locations[0][0].gsub("Greater", "").gsub("Area", "").strip
    @s.sorted_companies.each_with_index do |company, index|
      if count < 10
        company_coordinates = Geocoder.coordinates("#{company[0]} #{top_location}")
        if !company_coordinates.nil?
          @s.sorted_companies[index].push(company_coordinates).flatten!
          count += 1
          sleep 0.25
        end
      end
    end
  end

end