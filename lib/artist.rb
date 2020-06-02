class Artist
    attr_accessor :name, :artist 
    
    def initialize(name)
        @name = name 
        @songs = []
    end 

    def songs
       Song.all
       #.select do |song|    #why use select? 
        #song.artist = self 
       #end #Song.all is referring to the empty array in Song class
    end 

     
    def add_song(song)
        song.artist = self    
    end

    def add_song_by_name(title)
       add_song(Song.new(title))

    end 

    def self.song_count #reading test: when see a dot(.) it's self.____; # it's def
        Song.all.select{|song|song.artist}.length    
    end 
end 