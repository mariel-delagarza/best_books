#This file is for the Command Line Interface - what the user will interact with


class BestBooks::CLI


  def call
    puts "Welcome to the Goodreads Best Books of 2018!"
    list_categories
    menu
    #start
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
  end













end
