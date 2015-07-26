class App < Sinatra::Application
  get "/app.js" do 
    content_type "application/javascript"
    haml :app, :layout=>false, locals: {}
  end
end
