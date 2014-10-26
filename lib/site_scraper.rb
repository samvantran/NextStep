# class SiteScraper
#   # access site and scrape relevant data
#   # crawl through all search results

#   require 'nokogiri'
#   require 'open-uri'
#   require 'pry'

#   attr_reader :url, :html

#   def initialize
#     @url = "https://www.linkedin.com/vsearch/p?company=flatiron%20school&openAdvancedForm=true&companyScope=P&locationType=I&countryCode=us&rsid=769761811413923417870&orig=MDYS"
#     @html = open(url)
#   end

#   def scrape
#     hash = Nokogiri::HTML(self.html)
#     linkedin = File.open("./html.rb", 'w+')
#     linkedin.write(hash)
#     linkedin.close

#     # names = hash.css("div.bd h3 a")
#     # <ol id=​"results" class=​"search-results">​
#     # binding.pry
#   end
# end

# linkedin = SiteScraper.new
# linkedin.scrape