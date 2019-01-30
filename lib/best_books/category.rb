#These are the categories Goodreads uses to sort their Best Books by genre

class BestBooks::Categories
  attr_accessor :name, :book, :url, :author, :description

  @@all = []

  def initialize(name, book, url)
    @name = name
    @book = book
    @url = url
    @@all << self 
  end

  def self.all
    @@all
  end
  
  def self.get_bookcards
    BestBooks::Scraper.scrape_categories
  end
  
  def scrape_category_page
    page = self.url 
    doc = Nokogiri::HTML(open(page)) #open the URL 
    
    self.author = doc.css("div.authorName__container a span").text 
    self.description = doc.css("div.readable.stacked.gcaBookDescription").text.strip
    #@@all << self
  end  

end
