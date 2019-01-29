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
    puts <<-DOC.gsub /^\s*/,''
      1. Fiction
      2. Horror
    DOC
  end

  def menu
    puts ""
    puts "To see the top book in each category, enter the number of the category."
    puts "Type exit to exit program."
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "Top book in Fiction"
      when "2"
        puts "Top book in Horror"
      end
    end
  end

  def goodbye
    puts "Good bye! Enjoy your books!"
  end











end
