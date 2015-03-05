require 'sinatra/base'
require 'nokogiri'


module Sinatra
  
  module ParsingHelper
    
    def get_okko_prices
      { :euro_95 => 28.49, :dp_euro => 27.99}
    end
    
    def get_klo_prices
      
    end
    
  end
  
  helpers ParsingHelper
  
end