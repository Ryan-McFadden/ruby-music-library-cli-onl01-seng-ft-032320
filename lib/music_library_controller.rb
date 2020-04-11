class MusicLibraryController
  attr_accessor :path
  
  def initialize(path = "./db/mp3s")
    @path = path
    MusicImporter.new(path).import
  end
  
  def call
    puts "Welcome to your music library!"
    puts "To see a full list of songs, enter 'list songs'."
    puts "To see a full list of artists, enter 'list artists'."
    puts "To see a full list of genres, enter 'list genres'."
    puts "To see a list of songs by a artist, enter 'list songs by artist'."
    puts "To see a list of songs of a genre, enter 'list songs by genre'."
    puts "To play a song, enter 'play song'."
    puts "to exit the application, enter 'exit'."
    puts " "
    puts "What would you like to do Operator?"
    
    input = gets.strip.downcase
    
    if input = "exit"
      exit
    elsif input = "list songs"
      list_songs
    elsif input = "list artists"
      list_artists
    elsif input = "list genres"
      list_genres
    elsif input = "list songs by artist"
      list_songs_by_artist
    elsif input = "list songs by genre"
      list_songs_by_genre
    elsif input = "play song"
      play_song
    end
  end
  
  def list_songs
    Song.all.sort.each_with_index do |song, index|
      puts "#{index + 1}. #{song.name} - #{song.artist.name} - #{song.genre.name}"
    end
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