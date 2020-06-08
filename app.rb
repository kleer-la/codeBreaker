require 'sinatra'
require './config'

get '/' do
    erb :adivinar_numero
end

post '/' do
    if params['clave'].to_i == 10
        @mensaje = "Ganaste!"
    else
        @mensaje = "Perdiste!"
    end
end