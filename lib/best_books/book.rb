class BestBooks::Book

  attr_accessor :author, :description

  @@all = []

  def initialize(author, description)
    @author = author
    @description = description
    @@all << self
  end

end
