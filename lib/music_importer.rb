class MusicImporter
  attr_accessor :file
  
  def initialize(file)
    @file = file
  end
  
  def files
    Dir.entries(@file)
  end
  
  def import
    
  end
  
end