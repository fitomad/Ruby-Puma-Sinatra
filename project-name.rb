#
# Servicio que da nombre a un proyecto de Xcode
# dependiendo de su tipo.
#

require 'sinatra'
require_relative 'Oraculo'

#
# Antes de procesar cualquier ruta...
#
before do
    content_type :html
    @types = [ "iOS", "OSX", "WatchOS", "tvOS" ]
end

# Aqui procesamos el nombrado de proyectos
get '/projectname/:type' do
    # Comprobamos que el tipo de proyecto que nos piden
    # esta entre los que controlamos
    if !@types.include?(params['type'])
        halt 403, "Solo proyectos para Xcode, gracias"
    end

    oraculo = Oraculo.new(params['type'])

    "Su proyecto, gracias:<br />" + oraculo.name + "." + oraculo.domain
end

# El *acerca de* de toda la vida
get '/about' do
    "Esto es todo <strong>amigos</strong>"
end
