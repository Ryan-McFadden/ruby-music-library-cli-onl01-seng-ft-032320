class MusicLibraryController
  attr_accessor :library
  
  def initialize(library = "./db/mp3s/")
    @library = library
    MusicImporter.new(library)
  end
  
  def call
    
  end
end