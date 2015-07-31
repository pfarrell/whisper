require 'sequel'
require 'logger'

$console = ENV['RACK_ENV'] == 'development' ? Logger.new(STDOUT) : nil
DB = Sequel.connect(ENV['WHISPER_DB'] || 'postgres://localhost/whisper',logger: $console, poo_timeout: 15, max_connections: 8)

DB.sql_log_level = :debug
DB.extension(:pagination)
DB.extension(:pg_array, :pg_json)
DB.extension(:connection_validator)

Sequel::Model.plugin :timestamps
Sequel::Model.plugin :json_serializer

require 'models/note'
