
class Api
  
  def self.get_classy
    
    url ="http://dnd5eapi.co/api/classes/"
    response = HTTParty.get(url)
    class_hash = response.parsed_response["results"]
  class_hash.each {|c| Classes.new(name: c["name"], index: c["index"], url: c["url"])} #makes a class object for each of the 12 classes
  end
  
  def self.add_class_details(chosen_class)
    url = url ="http://dnd5eapi.co/api/classes/#{chosen_class}/"
    response = HTTParty.get(url)
  
end
end
