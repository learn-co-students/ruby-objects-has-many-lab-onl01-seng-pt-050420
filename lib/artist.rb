class Artist
  attr_accessor :name, :artist
  
  def initialize(name)
   @songs = []
    @name = name
  end
  
  def songs
    Song.all.select {|x| x.artist == self}
  end
  
  def add_song(song)
   song.artist = self
  end
  
  def add_song_by_name(song_name)
    self.add_song(Song.new(song_name))
  end
  
  def self.song_count
    Song.all.select {|x| x.artist}.length
  end
end


