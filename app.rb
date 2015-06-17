require 'sinatra'

puts settings.environment

post '/photo' do
  return 400, 'NG' unless params[:file]

  path = "/var/tmp/files/#{params[:file][:filename]}"

  File.open(path, 'wb') {|f| f.write params[:file][:tempfile].read }

  sleep(15)
  File.delete(path) if File.exists?(path)
  return 200, ''
end

get '/healthcheck' do
  return 200, 'alive'
end
