#This file is to pull TITLE and CATEGORY from https://www.goodreads.com/choiceawards/best-books-2018
#This file should also pull AUTHOR and DESCRIPTION from the url for each top book

#require 'open-uri'
#require 'nokogiri'
#require 'pry'

#class BestBooks::Scraper

  #def get_page
    #Nokogiri::HTML(open("https://www.goodreads.com/choiceawards/best-books-2018"))
  #end

  #def self.scrape_books
    #books = []
    #book_urls = []
    #self.get_page.css("div.categoryContainer").each do |book_box|
      #book_box.css(".category.clearFix a").each do |book|
        #category = book.css(".category__copy").text
        #title = book.css(".category__winnerImage").each{|img| puts img["alt"]}
        #book_url = "#{book.attr('href')}"
        #book_urls << book_url
        #books << {category: category, title: title, book_url: book_url}
      #end
    #end
    #books
  #end


  def scrape.book_urls(book_urls)
    book = {}
    book_urls.each do |url|
      book_info = Nokogiri::HTML(open("#{url}"))
       book[:author] = book_info.css("div.authorName__container a span").text
       book[:description] = book_info.css("div.readable.stacked.gcaBookDescription").text
     end
   end
 end





end
