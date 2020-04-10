class Genre 
  attr_accessor :name, :songs
  extend Concerns::Modules
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def save
    @@all << self
  end
  
  def artists
    songs = @songs.collect do |song|
      song.artist
    end
    songs.uniq
  end
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @@all.clear
  end
  
end