

class Classes
  attr_accessor :name, :index, :url, :hit_die, :proficiencys
  @@all = []
  def initialize(name:, index:, url:)
    @name = name
    @index = index
    @proficiencys = [] #this value is an array and thus must be created as an empty
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
  
  def add_proficiencys(value)
    @proficiencys << value unless @proficiencys.include?(value)
  end
  
  

end 
