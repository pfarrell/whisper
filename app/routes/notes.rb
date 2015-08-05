class App < Sinatra::Application
  get '/notes' do
  end

  get '/notes/:id' do
  end

  post '/notes' do
  require 'byebug'
  byebug
    json= request.body.read
    note = Note.from_json(json)
    return ["oh helloooo..."].to_json
  end

  put '/notes/:id' do
  end
end

  
