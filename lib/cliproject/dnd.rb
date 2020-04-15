

class Classes
  attr_accessor :name, :index, :url, :hit_die, :proficiency_choices
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

  def self.find_by_klass(klass)
    @@all.select {|c| c.name == klass}
  end
  
  def list_klasses
    @@all.each {|c| puts c.name}
  end
  

end 
