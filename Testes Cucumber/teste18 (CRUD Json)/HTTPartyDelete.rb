require 'httparty'

response = HTTParty.delete('http://5b49f9b0ff11b100149bf42b.mockapi.io/cm/startup/$id')
for (id > 0 )

puts "response code    :  #{response.code}"
puts "response message :  #{response.message}"
puts "response headers :  #{response.headers}"
puts "response body    :  #{response.body}"