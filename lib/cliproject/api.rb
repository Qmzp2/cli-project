
class Api
  
  def self.get_classy
    url ="http://dnd5eapi.co/api/classes/"
    response = HTTParty.get(url)
    class_hash = response.parsed_response["results"]
  class_hash.each{|c| c["index"]=Classes.new(name: c["name"], class_id:  c["index"], url:  c["url"])} #makes an instance of a class object for each of the 12 classes
  end
  
  def self.add_class_details(chosen_class)
    url ="http://dnd5eapi.co/api/classes/#{chosen_class}/"
    response = HTTParty.get(url)
    profs = response.parsed_response["proficiencies"].collect {|value| value["name"]} 
    hit_die = response.parsed_response["hit_die"]
    
    Classes.all.each do |value|
      if value.class_id == chosen_class
        value.hit_die = hit_die
        puts value.hit_die
      end
    end
    

    
 
  end 

end
