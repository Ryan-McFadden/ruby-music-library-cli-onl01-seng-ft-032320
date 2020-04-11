class MusicLibraryController
  attr_accessor :path
  
  def initialize(path = "./db/mp3s")
    @path = path
    MusicImporter.new(path).import
  end
  
  def call
    puts "Welcome to your music library!"
    puts " "
    puts "To see a full list of songs, enter "list songs"."
    puts "To see a full list of artists, enter "list artists"."
    puts "To see a full list of genres, enter "list genres"."
    puts "To see a list of songs by a artist, enter "list songs by artist"."
    puts "To see a list of songs of a genre, enter "list songs by genre"."
    puts "To play a song, enter "play song"."
    puts "to exit the application, enter "exit"."
    puts " "
    puts "What would you like to do Operator?"
    
    input = gets.strip.downcase
    
    if input = "exit"
      exit
    elsif 
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