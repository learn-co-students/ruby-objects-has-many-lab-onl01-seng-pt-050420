require 'pry'
class Artist
    @@song_count = 1
    attr_accessor :name, :song_count

    def initialize(name)
        @name = name
        
    end

    def add_song(song)
        song.artist = self
        @@song_count +=1
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
        
    end

    def add_song_by_name(song)
        song = Song.new(song)
        add_song(song)

    end
    def self.song_count
        
       @@song_count
       
    end


end