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
end 