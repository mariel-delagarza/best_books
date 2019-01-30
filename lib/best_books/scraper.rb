class BestBooks::Scraper

  def self.scrape_categories
    doc = Nokogiri::HTML(open("https://www.goodreads.com/choiceawards/best-books-2018"))


  end
end
