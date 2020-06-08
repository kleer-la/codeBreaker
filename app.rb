require 'sinatra'
require './config'

get '/' do
    erb :adivinar_numero
end

post '/' do
    erb :ganaste
end