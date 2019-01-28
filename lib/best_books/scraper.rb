#This file is to pull TITLE and CATEGORY from https://www.goodreads.com/choiceawards/best-books-2018
#This file should also pull AUTHOR and DESCRIPTION from the url for each top book 

require 'open-uri'
require 'nokogiri'
require 'pry'

class BestBooks::Scraper
  
  def self.scrape_books(goodreads_page)
    doc = Nokogiri::HTML(open(goodreads_page))
    categories = [] 
    doc.css(right container).each do |container|
      category = container.css(category html)
      title = container.css(title html)
      book_url = "#{container.attr('href')}"
      books << {category: category, title: title, url: url}
    end 
    books 
  end 
  
  
  
  
  
end 
