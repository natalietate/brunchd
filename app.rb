require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/partners' do
  erb :partners
end
