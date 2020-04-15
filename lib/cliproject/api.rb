
class Api
  
  def self.get_classy
    
    url ="http://dnd5eapi.co/api/classes/"
    response = HTTParty.get(url)
    class_hash = response.parsed_response["results"]
  class_hash.each {|c| Classes.new(name: c["name"], index: c["index"], url: c["url"])} #makes a class object for each of the 12 classes
  #get classes

  end
  
end

