require 'sinatra'
require 'json'
require 'net/http'
require 'uri'

require 'dotenv'
Dotenv.load

put '/*' do
  content_type :json
  {url: 'http://localhost:9000/test.pdf'}.to_json
end

get '/*' do
  'from fake amazon s3'
end
