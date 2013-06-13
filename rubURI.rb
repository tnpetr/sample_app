require 'addressable/uri'
require 'net/http'
 
@uri = Addressable::URI.parse("/static_pages/home")
@response = Net::HTTP.get_response(@uri)
puts @response.body
