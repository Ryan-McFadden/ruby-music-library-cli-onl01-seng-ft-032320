class Song 
  attr_accessor :name
  attr_reader :artist, :genre
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist != nil 
    self.genre = genre if genre != nil
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
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
  
  def find_by_name(name)
    Song.all.select do |song|
      song.name == name
    end
  end
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @all.clear
  end
  
end