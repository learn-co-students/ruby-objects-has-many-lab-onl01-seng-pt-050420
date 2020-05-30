
class Author
    attr_accessor :title, :author, :name
  
  def initialize (name)
    
    @posts = []
    @name = name
  end
  
  def posts
  Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    self.add_post(Post.new(title))
  end

  def self.post_count
    Post.all.select {|post| post.author}.length
end

  end