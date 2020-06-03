class Author
  attr_accessor :name, :author
  
  def initialize(name)
    @posts =[]
    @name = name
  end
  
   def posts
    Post.all.select {|x| x.author == self}
  end
  
  def add_post(post)
   post.author = self
  end
  
    def add_post_by_title(post_name)
    self.add_post(Post.new(post_name))
  end
  
    def self.post_count
    Post.all.select {|x| x.author}.length
  end
end