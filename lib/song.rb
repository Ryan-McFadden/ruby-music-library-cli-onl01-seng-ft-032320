class Song 
  attr_accessor :name
  attr_reader :artist, :genre
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    @artist = artist
    @genre = genre
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
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