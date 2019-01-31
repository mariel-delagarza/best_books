class BestBooks::Categories
  attr_accessor :name, :book_title, :url, :author, :description
  @@all = []

  def initialize(name, book_title, url)
    @name = name
    @book_title = book_title
    @url = url

    @@all << self
  end

  def self.all
    @@all
  end

  def self.get_bookcards
    BestBooks::Scraper.scrape_categories
  end
end
