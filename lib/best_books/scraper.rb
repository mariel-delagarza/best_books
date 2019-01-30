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

  def self.scrape_category_page 
    doc = Nokogiri::HTML(open("https://www.goodreads.com/choiceawards/best-books-2018"))
    url = doc.css("div.category.clearFix a").first.attr("href")
    author = url.css("div.authorName__container a span").text 
    description = url.css("div.readable.stacked.gcaBookDescription").text.strip
    BestBooks::Categories.add_attributes(author, description)
  end
end 