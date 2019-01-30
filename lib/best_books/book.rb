#This category is to keep track of the top book in each category

class BestBooks::Book 
  
  attr_accessor :title, :category, :author, :description 
  
  @@all = []
  
  def initialize(title, category, author, description)
    @title = title 
    @category = category 
    @author = author 
    @description = description
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
  
end 