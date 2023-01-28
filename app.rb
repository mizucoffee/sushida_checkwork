require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'

get '/' do
  scores = Score.all
  erb :index
end

post '/record' do
  Score.create(
    namae: params[:name],
    score: params[:score]
  )
  redirect '/'
end
