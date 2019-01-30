#This category is to keep track of the top book in each category

class BestBooks::Book 
  
  attr_accessor :title, :category, :author, :description 
  
  @@all = []
  
  def initialize(author, description)
    @author = author 
    @description = description
    @@all << self 
  end 
    
  def self.all 
    @@all 
  end 
  
  def self.title 
    @titles = BestBooks::Category.book
    titles.each do |title|
      @title = title 
    end 
  end 
    
  def self.category 
    @categories = BestBooks::Category.name 
    categories.each do |category|
      @category = category
    end 
  end 
  
  def self.get_book_info
    BestBooks::Scraper.scrape_category_page 
  end 
end 
