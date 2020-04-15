
class Api
  def self.get_classy(class_selection)
    url ="http://dnd5eapi.co/api/classes/#{class_selection}/"
    response = Net::HTTP.get(URI(url))
  end
  
end

