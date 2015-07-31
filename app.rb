$: << File.expand_path('../app', __FILE__)

require 'sinatra'
require 'haml'

class App < Sinatra::Application
  enable :sessions
  set :session_secret, ENV["APP_SESSION_SECRET"] || "youshouldreallychangethis"
  set :views, Proc.new { File.join(root, "app/views") }
  set :path, ENV["WHISPER_PATH"] || "" 
end

require 'models'
require 'routes'
