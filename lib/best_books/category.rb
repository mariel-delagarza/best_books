#These are the categories Goodreads uses to sort their Best Books by genre

class BestBooks::Category

  def self.all
    #should return each category instance
    puts <<-DOC.gsub /^\s*/,''
      1. Fiction
      2. Horror
    DOC
  end

end
