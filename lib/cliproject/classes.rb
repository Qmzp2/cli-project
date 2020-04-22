

class Classes
  attr_accessor :hit_die, :proficiencies
  attr_reader :name, :class_id, :url
  
  @@all = []
  
  def initialize(name:, class_id:, url:)
    @name = name
    @class_id = class_id
    @proficiencies = []
    @url = url
    @hit_die = hit_die
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_name(name)
    @@all.find {|c| c.name == name}
  end
  
  def self.find_by_classid(classid)
    @@all.find {|c| c.class_id == classid}
  end
  
  def self.class_id
    @@all.each {|value| value.class_id}
  end
  


end 
