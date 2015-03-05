require 'sinatra'
require 'slim'
require 'json/ext'

require './lib/sinatra/parse_helper.rb'



get '/okko' do
  res = get_okko_prices
  
   JSON.dump(res)
end

  
  
