require 'sinatra'
require 'slim'
require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

get '/about' do
  @title = "All About This Website"
  erb :about
end

get '/contact' do 
  @title = "Email To:"
  erb :contact
end

not_found do
  erb :not_found
end

get '/fake-error' do
  status 500
  "There's nothing wrong, really :P"
end