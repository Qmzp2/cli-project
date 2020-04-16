
class Api
  
  def self.get_classy
    url ="http://dnd5eapi.co/api/classes/"
    response = HTTParty.get(url)
    class_hash = response.parsed_response["results"]
  class_hash.each {|c| Classes.new(name: c["name"], class_id: c["index"], url: c["url"])} #makes an instance of a class object for each of the 12 classes
  end
  
  def self.add_class_details(chosen_class)
    url ="http://dnd5eapi.co/api/classes/#{chosen_class}/"
    response = HTTParty.get(url)
    profs = response.parsed_response["proficiencies"].collect {|value| value["name"]}
    
    hit_die = response.parsed_response["hit_die"] #save this to the object's hit die value
    binding.pry
end 
end
