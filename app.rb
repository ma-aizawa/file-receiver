require 'sinatra'

set :bind, '0.0.0.0'

post '/photo' do
  return 400, 'NG' unless params[:file]

  path = "/var/tmp/files/#{params[:file][:filename]}"
  File.open(path, 'wb') {|f| f.write params[:file][:tempfile].read }

  return 200, ''
end

get 'healthcheck' do
  return 200, 'alive'
end
