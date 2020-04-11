class MusicLibraryController
  attr_accessor :path
  
  def initialize(path = "./db/mp3s")
    @path = path
    MusicImporter.new(path).import
  end
  
  def call
    puts "Welcome to your music library!"
  end
  
  def list_songs
    
  end
  
  def list_artists
    
  end
  
  def list_genres
    
  end
  
  def list_songs_by_artist
    
  end
  
  def list_songs_by_genre
    
  end
  
  def play_song
    
  end
  
end