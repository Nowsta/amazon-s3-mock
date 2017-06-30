require 'sinatra'
require 'json'
require 'net/http'
require 'uri'

require 'dotenv'
Dotenv.load

HEADERS = {
  'Access-Control-Allow-Origin'  => ['*'],
  'Access-Control-Allow-Methods' => 'POST, PUT, OPTIONS',
  'Access-Control-Allow-Headers' => 'Content-Type,x-amz-acl',
  'Content-Type'                 => 'application/json',
}

get '/*' do
  'from fake amazon s3'
end

put '/*' do
  json = {url: 'http://localhost:4567/test.pdf'}.to_json
  [200, HEADERS, json]
end

options '/*' do
  json = {url: 'http://localhost:4567/test.pdf'}.to_json
  [200, HEADERS, json]
end
