#These are the categories Goodreads uses to sort their Best Books by genre

class BestBooks::Category
  attr_accessor :name, :book, :url

  def self.all
    #should return each category instance
    puts <<-DOC.gsub /^\s*/,''
      1. Fiction
      2. Mystery & Thriller
    DOC

    fiction = Category.new
    fiction.name = "Fiction"
    fiction.book = "Still Me (Me Before You #3)"
    fiction.url = "https://www.goodreads.com/book/show/35791968-still-me?from_choice=true"

    mystery = Category.new
    mystery.name = "Horror"
    mystery.book = "The Outsider"
    mystery.url = "https://www.goodreads.com/choiceawards/best-mystery-thriller-books-2018"

    [fiction, mystery]
  end

end
