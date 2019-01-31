class BestBooks::Scraper
  def self.scrape_categories
    doc = Nokogiri::HTML(open("https://www.goodreads.com/choiceawards/best-books-2018"))

    book_cards = doc.css("div.category.clearFix")

    book_cards.each do |card|
      url = card.css("a").first.attr("href")
      name = card.css("a").first.text.strip
      book_title = card.css("img").attr("alt").text
      BestBooks::Categories.new(name, book_title, url)
    end
  end

  def self.scrape_book_details(category)
    basepath = "https://www.goodreads.com"
    doc = Nokogiri::HTML(open("#{basepath + category.url}"))
    author = doc.css("div.authorName__container a span").text
    description = doc.css("div.readable.stacked.gcaBookDescription").text.strip
    category.author = author
    category.description = description
  end

end
