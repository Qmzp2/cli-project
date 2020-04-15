
class Api
  
  def self.get_classy
    
    url ="http://dnd5eapi.co/api/classes/"
    response = HTTParty.get(url)
    classes = response.parsed_response["results"]
    # classes.each{|class| Class.new}
puts classes
  end
  
end

