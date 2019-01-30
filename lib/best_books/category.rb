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
  
 # def self.scrape_category_page(page)
  #  doc = Nokogiri::HTML(open(page)) 
    
   # @author = doc.css("div.authorName__container a span").text 
    #@description = doc.css("div.readable.stacked.gcaBookDescription").text.strip
    #@@all << self
  #end  

end
