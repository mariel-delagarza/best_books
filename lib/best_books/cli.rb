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
  
  
  def goodbye 
    puts "Goodbye! Enjoy your books!"
  end 
  
end 