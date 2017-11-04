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
      expect(last_response.body).to include("Welcome... This is Brunch'd")
    end

    it "about page" do
      get '/about'
      expect(last_response).to be_ok
      expect(last_response.body).to include("About Brunch'd")
    end

    it "contact page" do
      get '/contact'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Get in Touch')
    end

    it "partners page" do
      get '/partners'
      expect(last_response).to be_ok
      expect(last_response.body).to include('Meet our Partners')
    end
  end

end
