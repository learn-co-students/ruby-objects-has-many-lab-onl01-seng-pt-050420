class Song
  @@all =[]
  attr_accessor:name
 
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def artist_name 
    if @artist == nil
      return nil 
    else 
      return @artist.name
    end 
    
  end 
  
  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
  end
  
  def artist
    @artist
  end
  
  def self.all
    @@all
  end
  
end 
