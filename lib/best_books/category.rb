#These are the categories Goodreads uses to sort their Best Books by genre

class BestBooks::Categories
  attr_accessor :name, :book, :url

  @@all = []

  def initialize(name, book, url)
    @name = name
    @book = book
    @url = url
    @@all << self
  end

  def self.get_bookcards
    BestBooks::Scraper.scrape_categories
  end
end
