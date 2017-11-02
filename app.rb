require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/two' do
  erb :two
end

get '/three' do
  erb :three
end

get '/four' do
  erb :four
end
