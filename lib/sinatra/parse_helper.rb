require 'sinatra/base'
require 'nokogiri'
require 'open-uri'


module Sinatra
  
  module ParsingHelper
    
    def get_okko_prices
      
      
      url = 'http://okko.ua/uk/types-of-fuel'
    prices = {}
      
     doc = Nokogiri::HTML(open url)
     doc.css('#fuelPrice li div').each { |item|
       
       prices[item['id']] = item.text
       
       }
      
       prices
      
      #{ :euro_95 => 28.49, :dp_euro => 27.99}
    end
    
    def get_klo_prices
      
    end
    
  end
  
  helpers ParsingHelper
  
end