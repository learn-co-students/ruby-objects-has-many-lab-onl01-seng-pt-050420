class Post
  
  @@all = []
  attr_accessor :title, :author
  
  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end

def author=(author)
  @author = author
  @author.add_post(self)
end 

def author
  @author
end 

def self.all
  @@all
end 







end