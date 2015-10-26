require 'sinatra'
require 'httparty'
require 'tilt/erubis'

set :bind, '0.0.0.0'

get '/' do
  response = HTTParty.get('http://169.254.169.254/latest/meta-data/instance-id')
  if response.success?
    @resp = response.body
    erb :index
  end

end
get '/long' do
  sleep(120)
  response = HTTParty.get('http://169.254.169.254/latest/meta-data/instance-id')
  if response.success?
    @resp = response.body
    erb :index
  end
end
