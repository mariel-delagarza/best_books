#These are the categories Goodreads uses to sort their Best Books by genre

class BestBooks::Category
  attr_accessor :name, :book, :url


  def self.all
    #scrape goodreads and return categories based on that data 
    self.scrape_categories
  end
  
  def self.scrape_categories
    fiction = self.new
    fiction.name = "Fiction"
    fiction.book = "Still Me (Me Before You #3)"
    fiction.url = "https://www.goodreads.com/book/show/35791968-still-me?from_choice=true"

    mystery = self.new
    mystery.name = "Mystery & Thriller"
    mystery.book = "The Outsider"
    mystery.url = "https://www.goodreads.com/choiceawards/best-mystery-thriller-books-2018"

    [fiction, mystery]
  end 

end
