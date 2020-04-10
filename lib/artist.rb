class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def add_song(song)
    song.artist = self if song.artist == nil
    @songs << song unless @songs.include?(song)
  end
  
  def songs 
    @songs
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    Artist.new(name).save
  end
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @all.clear
  end
  
end