class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def artist_name
    if @artist = ""
      nil
    else
      @artist
    end
  end

  def self.all
    @@all
  end
end
