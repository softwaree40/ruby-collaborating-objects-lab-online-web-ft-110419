class Song 
    @@all = []
    attr_accessor:artist,:name,:genre
    
    def initialize(name)
        @name = name
        @@all << self
    end  
    
    def self.all
      @@all
    end
    def self.new_by_filename(file)
      song_name = file.split(" - ")[1]
      artist = file.split(" - ")[0]
      song= self.new(song_name)
      song.artist = Artist.new(artist)
      
      
      song
        
    end
    def artist_name
      self.artist= Artist.find_or_create_by_name(name)
      self.artist.add_song(self)
      # binding.pry
    end
    
    
    def artist_name=(name)
       self.artist = Artist.find_or_create_by_name(name)
    end
end