#
# Ejemplo para probar la instalación de Ruby
#

class User
    # Constructor
    def initialize(name)
        @name = name
    end

    # Descripcion de la clase
    def to_s
        return "It's #{@name}"
    end
end

# Creamos un usuario...
user = User.new("me")
# ...y nos saluda
print("Hi! #{user.to_s}")
