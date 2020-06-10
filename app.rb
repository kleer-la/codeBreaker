require 'sinatra'
require './config'
require './lib/code_breaker'

get '/' do
    erb :adivinar_numero
end

post '/' do
    codeBreaker = CodeBreaker.new 10
    codeBreaker.validar params['clave'].to_i
    @mensaje = codeBreaker.status

    erb :resultado
end