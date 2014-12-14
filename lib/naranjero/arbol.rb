class Arbol
    attr_reader :edad, :altura, :contador
    
    def initialize()
        @edad = 0
        @altura = 0
        @contador = 0
    end
    
    def uno_mas
        if (@edad >= 25)
            matarArbol()
        else
            @edad += 1
            if (@altura.to_i < 3)
                @altura += 0.5
            else
                @altura += rand(0.5)
            end
            produccion()
        end
    end
    
    def recolectar_una
        respuesta =""
        if (esta_muerto?)
            respuesta = "El arbol esta muerto"
        elsif (@contador.to_i >= 1)
            @contador -= 1
            respuesta = "Se ha recolectado una fruta"
        else
            respuesta = "No hay fruta"
        end
        respuesta
    end
    
    def produccion
        if (@edad > 4)
            @contador += 1+rand(@edad) #1+edad/2
        end
    end
    
    def set_edad(edad)
        @edad = edad
        if (@edad >= 25)
            matarArbol()
        else
            @altura = edad*0.5
            @contador = (edad-4)*rand(3)
        end
    end
        
    def matarArbol
        #matar fruta con el arbol? @contador = 0 
        @altura = 0
    end
    
    def esta_muerto?
        if (edad >= 25 && altura == 0)
            return true
        end
        return false
    end

end
