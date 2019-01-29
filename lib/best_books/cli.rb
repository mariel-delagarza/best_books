class BestBooks::CLI


  def call
    puts "Welcome to the Goodreads Best Books of 2018!"
    list_categories
    menu
    goodbye
  end

  def list_categories
    puts ""
    puts "Below is a list of the categories."
    @list = BestBooks::Categories.all
    @list.each.with_index(1) do |category, i|
      puts "#{i}. #{category}"
    end 
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "To see the top book in each category, enter the number of the category."
      puts "Type categories to see the categories again."
      puts "Type exit to exit program."
      puts ""
      input = gets.strip.downcase

      if input.to_i > 0
        category = @list[input.to_i-1]  
        puts "#{category.name}"
      elsif input == "categories"
        list_categories
      else
        puts "I don't understand. Please enter a category number, type list, or type exit."
      end
    end
  end

  def goodbye
    puts "Good bye! Enjoy your books!"
  end

end
