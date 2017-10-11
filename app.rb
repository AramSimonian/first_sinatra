require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  'Secret squirrel!'
end

get '/noob' do
  'nooby-dooby-do'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index) + erb(:aram)
end

post '/named-cat' do

  p params

  @name = params[:name] || ""
  @likes = params[:likes] || ""
  @show_form_only = false
  erb(:index)
end

get '/aram' do
  erb(:aram)
end

get '/cat-form' do
  @name = params[:name] || ""
  @likes = params[:likes] || ""

  @show_form_only = true
  erb(:index)
end
