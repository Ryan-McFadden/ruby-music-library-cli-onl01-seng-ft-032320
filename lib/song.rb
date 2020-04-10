class Song 
  attr_accessor :name, :artist, :genre 
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    Song.new(name).save
  end
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @all.clear
  end
  
end