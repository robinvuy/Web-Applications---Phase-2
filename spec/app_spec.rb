# EXAMPLE
# file: spec/integration/application_spec.rb

require 'spec_helper'
require 'rack/test'
require_relative '../app'


describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /names" do
    xit "returns 200 ok with Julia, Mary, Karim" do
      response = get('/names')
      expect(response.status).to eq(200)
      expect(response.body).to eq('Julia, Mary, Karim')
    end
  end

  context "POST /sort-names" do
    it "sorts and returns names in alphabetical order with 200 ok" do
      response = post('/sort-names?names=Joe,Alice,Zoe,Julia,Kieran')
      expect(response.status).to eq(200)
      expect(response.body).to eq('Alice,Joe,Julia,Kieran,Zoe')
    end
  end
  
end