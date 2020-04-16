
class Api
  
  def self.get_classy
    url ="http://dnd5eapi.co/api/classes/"
    response = HTTParty.get(url)
    class_hash = response.parsed_response["results"]
  class_hash.each {|c| Classes.new(name: c["name"], index: c["index"], url: c["url"])} #makes an instance of a class object for each of the 12 classes
  end
  
  def self.add_class_details(chosen_class)
    url ="http://dnd5eapi.co/api/classes/#{chosen_class}/"
    response = HTTParty.get(url)
    proficiencies = response.parsed_response["proficiencies"] #save this to the object's proficiencies value
    hit_die = response.parsed_response["hit_die"] #save this to the object's hit die value
  
end 
end
