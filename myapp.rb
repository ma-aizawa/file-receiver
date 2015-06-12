require 'sinatra'

post '/photo' do
  return 400, 'NG' unless params[:file]

  path = "/tmp/files/#{params[:file][:filename]}"
  File.open(path, 'wb') {|f| f.write params[:file][:tempfile].read }

  return 200, ''
end

