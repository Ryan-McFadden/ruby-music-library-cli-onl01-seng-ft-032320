module Concerns::Modules
  
  def find_by_name(name)
    @@all.select do |song|
      song.name == name
    end
  end
  
  def fine_or_create_by_name(name)
    find_by_name(name) || self.create(name)
  end
  
end