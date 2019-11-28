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
        #binding.pry
     end
     
      def add_song(song_one)
          song_one.artist = self
      end
      def self.find_or_create_by_name(name)
          artist = self.all.detect  {|artist| artist.name == name}
          artist ||= Artist.new(name)
          artist
     end
    def print_songs
        binding.pry
        Song.all.select do |song|
        
       end 
    end
end