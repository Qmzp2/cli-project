
class Api
  
  def self.get_classy 
    url ="http://dnd5eapi.co/api/classes/"
    response = HTTParty.get(url)
    class_hash = response.parsed_response["results"]
  class_hash.each{|c| c["index"]=Classes.new(name: c["name"], class_id:  c["index"], url:  c["url"])}
  end
  
  def self.add_class_details(chosen_class)
    url ="http://dnd5eapi.co/api/classes/#{chosen_class}/"
    response = HTTParty.get(url)
    profs = response.parsed_response["proficiencies"].collect {|value| value["name"]} 
    hit_die = response.parsed_response["hit_die"]
    
    Classes.all.each do |value|
      if value.class_id == chosen_class
      value.hit_die = hit_die
       value.proficiencies = profs
        puts "The #{chosen_class} has a hit die of #{value.hit_die}.".colorize(:red)
        puts "The #{chosen_class} proficiencies are #{value.proficiencies.join(', ')}.".colorize(:red)
      end
    end
  end 

end
