

class Classes
  attr_accessor :name, :index, :url, :hit_die, :proficiencies
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
  
  def add_proficiencies(value)
    @proficiencys << value unless @proficiencys.include?(value)
  end
  
  def add_hit_die(value)
    @hit_die = value
  end
  
  def seach_class_by_name(given_name)
    self.all.find {|klass| klass.name == given_name}
  end
  
  def add_information(hit_die, proficiencies) #adds hit die, proficiencie
  @hit_die = hit_die
  @proficiencies = proficiencies
  end
end 
