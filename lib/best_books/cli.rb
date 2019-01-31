class BestBooks::CLI

  def call
    BestBooks::Categories.get_bookcards 
    puts "Welcome to the Goodreads Best Books of 2018!"
    puts ""
    list_categories 
    puts ""
    menu
  end

  def list_categories
    puts ""
    puts "Below is the list of categories:"
    BestBooks::Categories.all.each.with_index(1) do |category, index|
      puts "#{index}. #{category.name}"
    end
  end

  def menu
    puts "To see the top book in a category, enter 'book'."
    puts "To see the categories again, enter 'categories'."
    puts "To exit, type 'exit'."
    puts ""
    input = gets.strip.downcase
    case input
    when "book"
        choose_category
      when "categories"
        puts ""
        list_categories
        choose_category
      when "exit"
        puts "Goodbye! Enjoy your books!"
      else
        puts "I'm sorry, I don't understand."
        menu 
    end
  end

  def choose_category
    puts ""
    puts "Choose the category by entering its number."
    puts ""
    input = gets.strip.to_i
    max_value = BestBooks::Categories.all.length
    if input.between?(1,max_value)
      category = BestBooks::Categories.all[input-1]
      puts ""
      display_book_info(category)
    else
      puts "I'm sorry, I didn't understand."
      list_categories
      choose_category
    end
  end

  def display_book_info(category)
    BestBooks::Scraper.scrape_book_details(category)
    puts "Here are the title, author, and a brief description of the winner:"
    puts ""
    puts "Title:"
    puts category.book_title
    puts ""
    puts "Author:"
    puts category.author
    puts ""
    puts "Description:"
    puts category.description
    puts ""
    second_menu
  end

  def scrape_book_info(chosen_category)
    category = BestBooks::Categories.all[chosen_category]
    url = category.url
    BestBooks::Scraper.scrape_book_details(url)
  end

  def second_menu
    puts "Type 'category' to look at another category."
    puts "Type 'start' to go back to start."
    puts "Type 'exit' to exit."
    puts ""
    input = gets.strip.downcase
    if input == "category"
      list_categories
      choose_category
    elsif input == "start"
      puts ""
      menu
    elsif input == "exit"
      puts "Goodbye! Enjoy your books!"
    else
      puts "I'm sorry, I don't understand."
      second_menu
    end
  end
end
