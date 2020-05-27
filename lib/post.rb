
require 'pry'
class Post
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def author_name
<<<<<<< HEAD
=======
    binding.pry
>>>>>>> f64258cc588177b3971f989715289bd4982961dd
    if @author.name != ""
      @author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end
end
