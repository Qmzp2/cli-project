
class Api
  
  def self.get_classy
    
    url ="http://dnd5eapi.co/api/classes/"
    response = HTTParty.get(url)
    classes = response.parsed_response["results"]
  #  classes.each {|c| Class.new(name: c["name"], index: c["index"], url: c["url"])}
puts classes
  end
  
end

