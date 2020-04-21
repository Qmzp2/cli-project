

class Classes
  attr_accessor :name, :class_id, :url, :hit_die, :proficiencies
  @@all = []
  
  def initialize(name:, class_id:, url:)
    @name = name
    @class_id = class_id
    @proficiencies = [] #this value is an array and thus must be created as an empty
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
    @@all.each {|value| return value.class_id}
  end
  


end 
