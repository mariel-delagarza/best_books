#These are the categories Goodreads uses to sort their Best Books by genre

class BestBooks::Categories
  attr_accessor :name, :book, :url

  @@all = []
  @@every_url = []

  def initialize(name, book, url)
    @name = name
    @book = book
    @url = url
    @@all << self
    @@every_url << self.url 
  end

  def self.all
    @@all
  end
  
  def self.every_url
    @@every_url
  end 

  def self.get_bookcards
    BestBooks::Scraper.scrape_categories
  end
end
