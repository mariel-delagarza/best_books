#This file is for the Command Line Interface - what the user will interact with


class BestBooks::CLI


  def call
    puts "Welcome to the Goodreads Best Books of 2018!"
    list_categories
    menu
    #start
    goodbye
  end

  #def start
  #  menu
  #  goodbye
  #end

  def list_categories
    puts ""
    puts "Below is a list of the categories."
    @categories = BestBooks::Category.all
    @categories.each.with_index(1) do |category, i|
      puts "#{i}. #{category.name}"
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
          puts @categories[input.to_i-1]
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
