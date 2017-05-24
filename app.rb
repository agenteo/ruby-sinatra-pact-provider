require 'sinatra'

class MyApp < Sinatra::Base
  before do
    content_type 'application/json; charset=utf-8'
  end

  get '/api/v1/offers' do
    erb :"offers.json"
  end

  post '/oauth/token' do
    erb :"token.json"
  end

end
