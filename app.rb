require 'sinatra'
require './config'

get '/' do
    erb :adivinar_numero
end

post '/' do
    "Ganaste!"
end