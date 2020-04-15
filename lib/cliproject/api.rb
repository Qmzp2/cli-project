
class Api
  def get_something
    url ="url_here"
    response = Net::HTTP.get(URI(url))
  end
  
end

