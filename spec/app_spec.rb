ENV['RACK_ENV'] = 'test'

require_relative '../app.rb'  # <-- your sinatra app
require 'rspec'
require 'sinatra'
require 'rack/test'

describe 'App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  # simple testing of the routes
  describe "routes for page nav" do
    it "is home page" do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Hello World')
    end

    it "page two" do
      get '/two'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Two')
    end

    it "page three" do
      get '/three'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Three')
    end

    it "page four" do
      get '/four'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Four')
    end
  end

end
