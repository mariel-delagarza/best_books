class BestBooks::Scraper
  
  def self.scrape_categories
    doc = Nokogiri::HTML(open("https://www.goodreads.com/choiceawards/best-books-2018"))

    book_cards = doc.css("div.category.clearFix")

    book_cards.each do |card|
      url = card.css("a").first.attr("href")
      name = card.css("a").first.text.strip
      book = card.css("img").attr("alt").text
      BestBooks::Categories.new(name, book, url)
    end
  end
  

    
  
 def self.scrape_category_page
    url = "https://www.goodreads.com/choiceawards/best-fiction-books-2018"
    doc = Nokogiri::HTML(open(url)) #open the URL 
    
    book = Book.new
    book.author = doc.css("div.authorName__container a span").text 
    book.description = doc.css("div.readable.stacked.gcaBookDescription").text.strip
    
    book 
  end 
end 