#This file is to pull TITLE and CATEGORY from https://www.goodreads.com/choiceawards/best-books-2018
#This file should also pull AUTHOR and DESCRIPTION from the url for each top book

require 'open-uri'
require 'nokogiri'
require 'pry'

class BestBooks::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.goodreads.com/choiceawards/best-books-2018"))
  end

  def self.scrape_books
    books = []
    self.get_page.css("div.categoryContainer").each do |book_box|
      book_box.css(".category.clearFix a").each do |book|
        category = book.css(".category__copy").text
        title = book.css(".category__winnerImage").each{|img| puts img["alt"]}
        book_url = "#{book.attr('href')}"
        books << {category: category, title: title, book_url: book_url}
      end
    end
    books
  end




      category = container.css(category html)
      title = container.css(title html)
      book_url = "#{container.attr('href')}"
      books << {category: category, title: title, url: url}
    end
    books
  end





end
