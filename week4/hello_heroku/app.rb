require 'sinatra'
require 'active_record'
require 'yaml'
require_relative 'character'

# database_config = YAML::load(File.open('config/database.yml'))

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

before do
  content_type :json
end

after do
  ActiveRecord::Base.connection.close
end

get '/api/characters' do
  Character.all.to_json
end

post '/api/characters' do
  Character.create(name: params[:name]).to_json
end
