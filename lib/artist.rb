class Artist
    attr_accessor :name, :songs
  
    def initialize(name) 
      @name = name
      @songs = []
    end

    def songs
       Song.all.select { |song_instance| song_instance.artist == self}
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
       song = Song.new(name) #creating a new instance of song
       @songs << song
       song.artist = self
    end

    def self.song_count #class method, returns total number of songs to all existing artist
        Song.all.length
    end

  end