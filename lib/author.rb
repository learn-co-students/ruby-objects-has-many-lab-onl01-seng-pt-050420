class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author=self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
    post.author=self
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end

  def posts
    @posts
  end
end
