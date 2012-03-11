require 'spec_helper'

describe Split::API do
  include Rack::Test::Methods

  def app
    @app ||= Split::API
  end

  before(:each) { Split.redis.flushall }
  
  describe '/ab_test' do
    it "should respond" do
      get '/ab_test', :experiment => 'text_color', :control => 'red', :alternatives => 'blue'
      last_response.should be_ok
    end
  
    it 'should set the correct session variable'
  end
  
  describe '/finished' do
    it "should respond" do
      post '/finished', :experiment => 'text_color'
      last_response.should be_ok
    end
    
    it 'should handle having an empty session'
  end
end