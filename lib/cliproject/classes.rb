

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
end 
