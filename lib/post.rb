class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end


  def add_author(author)
    author.songs << self
  end

  def author_name
    #logic here : condition? if true : if false
    self.author ? self.author.name : nil
  end
end
