#These are the categories Goodreads uses to sort their Best Books by genre

class BestBooks::Categories
  attr_accessor :name, :book, :url

  @@all = [] 
    

  def self.all
    self.scrape_categories
  end
  
  def self.scrape_categories
    doc = Nokogiri::HTML(open("https://www.goodreads.com/choiceawards/best-books-2018"))

    categories = doc.css("h4.category__copy").text.tr("\n"," ").split(" ")

    mystery = categories[1..3].join(" ")
    categories.slice!(1..3)
    categories.insert(1, mystery)

    historical_fiction = categories[2..3].join(" ")
    categories.slice!(2..3)
    categories.insert(2, historical_fiction)

    best_of_best = categories[4..7].join(" ")
    categories.slice!(4..7)
    categories.insert(4, best_of_best)

    science_fiction = categories[6..7].join(" ") 
    categories.slice!(6..7)
    categories.insert(6, science_fiction)

    memoir = categories[10..12].join(" ")
    categories.slice!(10..12)
    categories.insert(10, memoir)

    history_biography = categories[11..13].join(" ")
    categories.slice!(11..13)
    categories.insert(11, history_biography)

    science_tech = categories[12..14].join(" ")
    categories.slice!(12..14)
    categories.insert(12, science_tech)

    food_books = categories[13..15].join(" ")
    categories.slice!(13..15)
    categories.insert(13, food_books)

    graphic_comics = categories[14..17].join(" ")
    categories.slice!(14..17)
    categories.insert(14, graphic_comics)

    debut_author = categories[16..17].join(" ")
    categories.slice!(16..17)
    categories.insert(16, debut_author)

    ya_fiction = categories[17..19].join(" ")
    categories.slice!(17..19)
    categories.insert(17, ya_fiction)

    ya_fantasy = categories[18..20].join(" ")
    categories.slice!(18..20)
    categories.insert(18, ya_fantasy)

    middle_grade = categories[19..22].join(" ")
    categories.slice!(19..22)
    categories.insert(19, middle_grade)

    picture = categories[20..21].join(" ")
    categories.slice!(20..21)
    categories.insert(20, picture)

    categories.join(", ")
    @@all << categories
    categories
  end 

  def create_categories 
  @@all.each do |name|
    category.name = name 
  end 
  
  
  end 
end 