class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def add_artist(artist)
    artist.songs << self
  end

  def artist_name
    #logic here : condition? if true : if false
    self.artist ? self.artist.name : nil
  end
end
