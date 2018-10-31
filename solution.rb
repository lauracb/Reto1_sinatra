require 'sinatra'

get '/' do  
    unless params[:nombre]
        @saludo = "Hola desconocido!"
    else
        if params[:nombre] == ""
            @saludo = "Hola desconocido!"
        else
            @saludo ="Hola #{params[:nombre]}!"
        end
    end
    erb :nombre
end
