require 'net/http'
require 'json'

class GetRequester
  def initialize(url)
    @url = url
  end

  def get_data
    uri = URI(@url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end

requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
data = requester.get_data
puts data
