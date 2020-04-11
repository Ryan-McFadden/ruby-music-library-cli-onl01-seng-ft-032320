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
    song = self.new(name)
    song.save
    song
  end
  
  def self.new_from_filename(filename)
    file = filename.split(" - ")
    song_name = file
    
  end
  
  def self.create_from_filename(file)
    
  end
  
  def find_by_name(name)
    @@all.select do |song|
      song.name == name
    end
  end
  
  def fine_or_create_by_name(name)
    find_by_name(name) || self.create(name)
  end
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @@all.clear
  end
  
end