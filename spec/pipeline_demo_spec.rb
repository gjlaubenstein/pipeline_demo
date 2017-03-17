ENV['RACK_ENV'] = 'test'

require_relative '../app'
require 'rack/test'
require 'rspec'

RSpec.configure do |conf|
    conf.include Rack::Test::Methods
end

describe 'The pipeline app' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "returns 'pipeline demo!'" do
    get '/pipeline-demo'

    expect(last_response).to be_ok
    expect(last_response.body).to eq('pipeline demo!')
  end
end
