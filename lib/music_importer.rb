class MusicImporter
  attr_accessor :file
  
  def initialize(file)
    @file = file
  end
  
  def files
    Dir.entries(@file).select! do |file|
      file.end_with?(".mp3")
    end
  end
  
  def import
    
  end
  
end