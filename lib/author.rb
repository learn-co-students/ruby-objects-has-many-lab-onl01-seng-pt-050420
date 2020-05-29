require 'pry'
class Author 
  
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name 
  end 
  
   def posts 
    Post.all.select do |post|
      post.author == self 
  end 
end 

  def add_post(post) 

    post.author = self 

end 

  def add_post_by_title(post_name)
    
  new_post_name = Post.new(post_name)
  add_post(new_post_name)
end 

def self.post_count
  

Post.all.count 


end 
end 


