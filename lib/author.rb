class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end 
  
  def posts
    Post.all.select { |title| title.author == self }
  end
  
  def add_post(title)
    title.author = self
  end
  
  def add_post_by_title(name)
    title = Post.new(name)
    add_post(title)
  end
  
  def self.post_count
    Post.all.length
  end
end