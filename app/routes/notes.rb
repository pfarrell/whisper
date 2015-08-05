class App < Sinatra::Application
  get '/notes' do
    Note.to_json(array: Note.all, root: true)
  end

  get '/notes/:id' do
  end

  post '/notes' do
    json= request.body.read
    obj = JSON.parse(json)['note']
    note = Note.find_or_create(title: obj['title'], note: obj['note'])
    return note.to_json(root: true)
  end

  put '/notes/:id' do
  end
end

  
