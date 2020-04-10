class Genre 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
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