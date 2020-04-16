

class Classes
  attr_accessor :name, :class_id, :url, :hit_die, :proficiencies
  @@all = []
  
  def initialize(name:, class_id:, url:)
    @name = name
    @class_id = class_id
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
  
  def self.find_by_name(name)
    @@all.select {|c| c.name == name}
  end
  
  def self.find_by_classid(classid)
    @@all.select {|c| c.class_id == classid}
  end
  

end 
