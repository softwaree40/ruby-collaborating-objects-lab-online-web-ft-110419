require 'pry'
class Artist
      attr_accessor :name,:songs
      @@all = []
      def initialize(name)
       @name = name
      @@all  << self
      
       #binding.pry
      end
     
      def self.all
       @@all
       
       #binding.pry
     end
     
     def songs
        Song.all.select {|song| song.artist == self }
     end
     
      def add_song(song)
          song.artist = self
      end
      def self.find_or_create_by_name
          artist_1 = Artist.new(name) 
          artist_1
      end
end