
class Api
  
  def self.get_classy(class_selection)
    url ="http://dnd5eapi.co/api/classes/#{class_selection}/"
    # response = Net::HTTP.get(URI(url)) #class example: didnt work
    r = HTTParty.get(url) #google example, did work. Thanks google!
    classes = r.parsed_response #doesn't seem to do anything
    puts classes
  end
  
end

