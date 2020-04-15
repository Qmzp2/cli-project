

class Class
  attr_accessor :name, :index, :url
  @@all = []
  def initialize(name:, index:, url:)
    @name = name
    @index = index
    @url = url
    save
  end
  
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
end 
