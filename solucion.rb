require 'sinatra'

get '/' do  
    unless params[:nombre]
        @saludo = "Hola desconocido!"
    else
        @saludo ="Hola #{params[:nombre]}!"
    end
    erb :nombre
end
