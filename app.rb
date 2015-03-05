require 'sinatra'
require 'slim'
require 'json/ext'



get '/okko' do
  res = { :euro_95 => 28.49, :dp_euro => 27.99}
  
   JSON.dump(res)
end

  
  
