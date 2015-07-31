class App < Sinatra::Application
  get "/" do
    {"description"=>"is working"}.to_json
  end
end
