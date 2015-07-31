class App < Sinatra::Application
  get "/" do
    content_type 'application/json'
    {"description"=>"is working"}.to_json
  end
end
