
class Api
  
  def self.get_classy(class_selection)
    url ="http://dnd5eapi.co/api/classes/#{class_selection}/"
    # response = Net::HTTP.get(URI(url)) #class example: didnt work
    r = HTTParty.get(url) #google example, did work. Thanks google!
    puts r
  end
  
end

