require 'sinatra'
require 'yajl/json_gem'

get '/location' do
  {name: 'Billings', location: '45.7833N, 108.5000W'}.to_json
end

post '/locaiton' do 
  'Success!'
end