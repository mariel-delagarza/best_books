#This file is for the Command Line Interface - what the user will interact with 

class BestBooks::CLI 
  
  
  def call 
    puts "Welcome to the Goodreads Best Books of 2018!"
    start 
  end 
  
  def start 
    menu 
    goodbye 
  end 
  
  def menu 
    puts ""
    puts "To see the categories, type category."  #inside categories, they should be able to get more information about a book 
    puts "To see a list of the book titles, enter titles"
    puts "Type 'exit' to exit the program."
    input = nil 
    while input != "exit"
      input = gets.strip.downcase
      case input 
        when "category"
          list_categories 
        when "titles"
          list_book_titles 
        else puts "I don't understand. Please type: category, titles, or exit."
      end 
    end 
  end 
    
  
  def goodbye 
    puts "Goodbye! Enjoy your books!"
  end 
  
end 