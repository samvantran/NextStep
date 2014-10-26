require './config/environment.rb'

class InfoScraper
  attr_accessor :titles, :companies, :industries, :locations

  def initialize
    @titles = {}
    @companies = {}
    @industries = {}
    @locations = {}
  end

  def scrape(html)
    doc = Nokogiri::HTML(html)
    people = doc.css("li[data-li-position]")
    # people.first.css("div.bd p.description").text.split(" at ")[0] -- gets job title of first person
    people.each do |person|
      grab_title(person)
      grab_company(person)
      grab_industry(person)
      grab_location(person)
    end
  end

  def grab_title(person)
    title = person.css("div.bd p.description").text.split(" at ")[0]
    titles[title] ? titles[title] += 1 : titles[title] = 1
  end

  def grab_company(person)
    company = person.css("div.bd p.description").text.split(" at ")[1]
    company.gsub!("The ", "") if company
    company != nil && companies[company] ? companies[company] += 1 : companies[company] = 1
  end

  def grab_industry(person)
    industry = person.css('div.bd dl.demographic').text.match(/Industry/).post_match
    industries[industry] ? industries[industry] += 1 : industries[industry] = 1
  end

  def grab_location(person)
    location = person.css('div.bd dl.demographic dd.separator').text
    locations[location] ? locations[location] += 1 : locations[location] = 1
  end
end