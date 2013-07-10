require 'sinatra'
require 'yajl/json_gem'

configure do 
  mime_type :javascript, 'text/javascript'
end

get '/' do
  content_type :javascript
    data = {query: 
      [{ id: "ga-3475", name: "gadget",   price: "$6.99", cost: "$5.99" },
             { id: "sp-9980", name: "sprocket", price: "$3.75", cost: "$3.25" },
             { id: "wi-0650", name: "widget",   price: "$4.25", cost: "$3.75" }] 
    }.to_json

end



get '/test' do
  content_type :javascript
    data = {query: 
      [{ id: "ga-3475", name: "gadget",   price: "$6.99", cost: "$5.99" },
             { id: "sp-9980", name: "sprocket", price: "$3.75", cost: "$3.25" },
             { id: "wi-0650", name: "widget",   price: "$4.25", cost: "$3.75" }] 
    }.to_json

end


get '/location' do
  {name: 'Billings', location: '45.7833N, 108.5000W'}.to_json
end

post '/locaiton' do 
  'Success!'
end