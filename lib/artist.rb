class Artist
      attr_accessor :name 
      @@all = []
      def initialize(name)
       @name = name
       
      end
     
      def self.all
       @@all  << self 
       #binding.pry
     end
     
     def songs 
       
     end
end