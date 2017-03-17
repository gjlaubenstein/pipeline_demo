require 'sinatra'

set :bind, '0.0.0.0'

get '/pipeline-demo' do
  'pipeline demo!'
end
