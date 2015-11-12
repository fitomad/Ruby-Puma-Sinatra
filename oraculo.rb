#
# El que da los nombre
#

class Oraculo
    # Nombre del proyecto
    attr_reader :name
    # Dominio del sitio web
    attr_reader :domain

    # Constructor
    def initialize(type)
        @type = type
        # Damos nombre al proyecto
        project_name
    end

    #
    # Metodo privados
    #

    private

    # Da un nombre al proyecto segun su tipo
    def project_name
        case
            when @type == 'iOS'
                @name = "getit"
                @domain = "app"
            when @type == 'OSX'
                @name = "macapp"
                @domain = "com"
            when @type == 'WatchOS'
                @name = "glance"
                @domain = "io"
            when @type == 'tvOS'
                @name = "showsapp"
                @domain = "info"
        end
    end
end
